local function find_latest_volta_node_bin()
  -- Obtiene el directorio base de Volta desde las variables de entorno
  local volta_home = vim.env.VOLTA_HOME

  -- Verifica si VOLTA_HOME está configurado
  if not volta_home or volta_home == "" then
    vim.notify(
      "Volta: VOLTA_HOME no está configurado. No se puede encontrar la versión de Node.js gestionada por Volta.",
      vim.log.levels.WARN -- Usamos nivel de advertencia
    )
    return nil -- Retorna nil si Volta no está configurado
  end

  local node_versions_dir = volta_home .. "/tools/image/node"

  -- Usa vim.fn.readdir para listar los contenidos del directorio de versiones de Node.js de Volta
  -- Es más robusto que ejecutar comandos externos como 'ls' o 'dir'
  local versions = vim.fn.readdir(node_versions_dir)

  -- Verifica si se encontraron versiones
  if not versions or #versions == 0 then
    vim.notify(
      "Volta: No se encontraron versiones de Node.js en el directorio: " .. node_versions_dir,
      vim.log.levels.WARN
    )
    return nil -- Retorna nil si no hay versiones
  end

  local latest_version = nil
  local latest_version_name = nil -- Para almacenar el nombre de la versión (string)
  local latest_bin_path = nil -- Para almacenar el path completo al directorio bin

  -- Itera sobre los nombres encontrados y busca la última versión
  for _, version_name in ipairs(versions) do
    -- vim.version.parse puede parsear strings de versión (ej: "20.18.3") a una estructura comparable
    local parsed_version = vim.version.parse(version_name)

    -- Verifica si se pudo parsear correctamente la versión
    if parsed_version then
      -- Compara la versión parseada actual con la última encontrada hasta ahora
      -- vim.version.cmp compara dos versiones parseadas. > 0 significa que parsed_version es mayor.
      if latest_version == nil or vim.version.cmp(parsed_version, latest_version) > 0 then
        latest_version = parsed_version
        latest_version_name = version_name
        -- Construye el path completo al directorio 'bin' de esta versión
        latest_bin_path = node_versions_dir .. "/" .. version_name .. "/bin"
      end
      -- else
      -- Opcional: Descomentar si quieres ver los nombres que no se pudieron parsear como versión
      -- print("Volta: Saltando entrada no válida en el directorio de versiones: " .. version_name)
    end
  end

  -- Verifica si se encontró una versión válida y su path 'bin'
  if latest_bin_path and latest_bin_path ~= "" then
    vim.notify(
      "Volta: Usando Node.js versión " .. latest_version_name .. " desde " .. latest_bin_path,
      vim.log.levels.INFO -- Usamos nivel de información si todo va bien
    )
    return latest_bin_path -- Retorna el path del directorio bin de la última versión
  else
    vim.notify("Volta: No se pudo determinar la última versión válida de Node.js.", vim.log.levels.WARN)
    return nil -- Retorna nil si no se encontró ninguna versión válida
  end
end

-- --- Lógica principal ---
-- Encuentra el path al directorio bin de la última versión de Node.js de Volta
local volta_node_bin_path = find_latest_volta_node_bin()

-- Si se encontró un path, añádelo al inicio de la variable de entorno PATH de Neovim
if volta_node_bin_path then
  local current_path = vim.env.PATH
  -- Determina el separador de PATH correcto según el sistema operativo
  local path_separator = vim.loop.os_uname().sysname == "Windows" and ";" or ":"

  -- Verifica si el path ya está presente en el PATH actual para evitar duplicados
  -- Esto es una comprobación simple. Para mayor robustez, se podría split el PATH y buscar el elemento exacto.
  if not current_path:find(volta_node_bin_path, 1, true) then
    vim.env.PATH = volta_node_bin_path .. path_separator .. current_path
    -- print("PATH de Neovim modificado con Volta Node:", vim.env.PATH)
  end
end
