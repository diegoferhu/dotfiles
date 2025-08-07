-- Define prompts for Copilot
-- This table contains various prompts that can be used to interact with Copilot.
local my_system_prompt =
  "Eres un arquitecto líder frontend especializado en Angular y React, con experiencia en arquitectura limpia, arquitectura hexagonal y separación de lógica en aplicaciones escalables. Tienes un enfoque técnico pero práctico, con explicaciones claras y aplicables, siempre con ejemplos útiles para desarrolladores con conocimientos intermedios y avanzados. Hablas con un tono profesional pero cercano, relajado y con un toque de humor inteligente. Evita formalidades excesivas y usa un lenguaje directo, técnico cuando es necesario, pero accesible. Tu estilo es colombiano, sin caer en clichés, y utiliza expresiones como “bueno aca vamos” o “vamos que vamos” según el contexto. Tus principales áreas de conocimiento incluyen:\n- Desarrollo frontend con Angular, React y gestión de estado avanzada (Redux, Signals, State Managers).\n- Arquitectura de software con enfoque en Clean Architecture, Hexagonal Architecture y Scream Architecture.\n- Implementación de buenas prácticas en TypeScript, testing unitario y end-to-end.\n- Loco por la modularización, atomic design y el patrón contenedor presentacional \n- Herramientas de productividad como LazyVim, Tmux, Zellij, OBS y Stream Deck.\n- Mentoría y enseñanza de conceptos avanzados de forma clara y efectiva.\n- Liderazgo de comunidades y creación de contenido en YouTube, Twitch y Discord.\n\nA la hora de explicar un concepto técnico:\n1. Explica el problema que el usuario enfrenta.\n2. Propone una solución clara y directa, con ejemplos si aplica.\n3. Menciona herramientas o recursos que pueden ayudar.\n\nSi el tema es complejo, usa analogías prácticas, especialmente relacionadas con construcción y arquitectura. Si menciona una herramienta o concepto, explica su utilidad y cómo aplicarlo sin redundancias.\n\nAdemás, tiene experiencia en charlas técnicas y generación de contenido. Puede hablar sobre la importancia de la introspección, cómo balancear liderazgo y comunidad, y cómo mantenerse actualizado en tecnología mientras se experimenta con nuevas herramientas. Tu estilo de comunicación es directo, pragmático y sin rodeos, pero siempre accesible y ameno. Hablas y responde español"
local prompts = {
  JarvisExplain = {
    -- ExplainCode = "Please explain the following code in a clear and concise manner.", -- Prompt to explain code
    prompt = "Por favor explicame como funciona el siguiente codigo de forma clara y concisa.",
    system_prompt = my_system_prompt,
  },
  JarvisReview = {
    -- Review = "Please review the following code and provide suggestions for improvement.", -- Prompt to review code
    prompt = "Por favor, revisa el siguiente código y proporcione sugerencias para mejorarlo",
    system_prompt = my_system_prompt,
  },
  JarvisTests = {
    -- Tests = "Please explain how the selected code works, then generate unit tests for it.", -- Prompt to generate unit tests
    prompt = "Por favor, explicame cómo funciona el código seleccionado y genere pruebas unitarias para él",
    system_prompt = my_system_prompt,
  },
  JarvisRefactor = {
    -- Refactor = "Please refactor the following code to improve its clarity and readability.", -- Prompt to refactor code
    prompt = "Por favor, refactoriza el siguiente código para mejorar su claridad y legibilidad",
    system_prompt = my_system_prompt,
  },
  JarvisFixCode = {
    -- FixCode = "Please fix the following code to make it work as intended.", -- Prompt to fix code
    prompt = "Por favor, corrije el siguiente código para que funcione según lo previsto",
    system_prompt = my_system_prompt,
  },
  JarvisFixError = {
    -- FixError = "Please explain the error in the following text and provide a solution.", -- Prompt to fix errors
    prompt = "Por favor, explica el error del siguiente texto y proporcione una solución",
    system_prompt = my_system_prompt,
  },
  JarvisBetterNamings = {
    -- BetterNamings = "Please provide better names for the following variables and functions.", -- Prompt to suggest better names
    prompt = "Por favor, proporciona mejores nombres para las siguientes variables y funciones",
    system_prompt = my_system_prompt,
  },
  JarvisDocumentation = {
    -- Documentation = "Please provide documentation for the following code.", -- Prompt to generate documentation
    prompt = "Por favor, proporciona documentación para el siguiente código",
    system_prompt = my_system_prompt,
  },
  JarvisJsDocs = {
    -- JsDocs = "Please provide JsDocs for the following code.", -- Prompt to generate JsDocs
    prompt = "Por favor, proporciona JsDocs para el siguiente código",
    system_prompt = my_system_prompt,
  },
  JarvisDocumentationForGithub = {
    -- DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.", -- Prompt to generate GitHub documentation
    prompt = "Por favor, proporciona documentación para el siguiente código lista para GitHub usando markdown",
    system_prompt = my_system_prompt,
  },
  JarvisCreateAPost = {
    -- CreateAPost = "Please provide documentation for the following code to post it in social media, like Linkedin, it has be deep, well explained and easy to understand. Also do it in a fun and engaging way.", -- Prompt to create a social media post
    prompt = "Por favor, proporciona documentación para el siguiente código para publicarlo en medios sociales, como Linkedin, tiene que ser profundo, bien explicado y fácil de entender. También hazlo de una manera divertida y atractiva",
    system_prompt = my_system_prompt,
  },
  JarvisSwaggerApiDocs = {
    -- SwaggerApiDocs = "Please provide documentation for the following API using Swagger.", -- Prompt to generate Swagger API docs
    prompt = "Por favor, proporciona documentación para la siguiente API usando Swagger",
    system_prompt = my_system_prompt,
  },
  JarvisSwaggerJsDocs = {
    -- SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.", -- Prompt to generate Swagger JsDocs
    prompt = "Por favor, escribe JSDoc para la siguiente API usando Swagger",
    system_prompt = my_system_prompt,
  },
  JarvisSummarize = {
    -- Summarize = "Please summarize the following text.", -- Prompt to summarize text
    prompt = "Por favor, resume el siguiente texto",
    system_prompt = my_system_prompt,
  },
  JarvisSpelling = {
    -- Spelling = "Please correct any grammar and spelling errors in the following text.", -- Prompt to correct spelling and grammar
    prompt = "Por favor, corrije los errores gramaticales y ortográficos del siguiente texto",
    system_prompt = my_system_prompt,
  },
  JarvisWording = {
    -- Wording = "Please improve the grammar and wording of the following text.", -- Prompt to improve wording
    prompt = "Por favor, mejora la gramática y redacción del siguiente texto",
    system_prompt = my_system_prompt,
  },
  JarvisConcise = {
    -- Concise = "Please rewrite the following text to make it more concise.", -- Prompt to make text concise
    prompt = "Por favor, reescribe el siguiente texto para hacerlo más conciso",
    system_prompt = my_system_prompt,
  },
}
return {
  "CopilotC-Nvim/CopilotChat.nvim",
  -- version = "3.11.0",
  dependencies = {
    -- { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
    -- { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  build = "make tiktoken", -- Only on MacOS or Linux
  opts = function()
    local user = vim.env.USER or "User"
    user = user:sub(1, 1):upper() .. user:sub(2)
    return {
      model = "codellama:13b-instruct",
      prompts = prompts,
      -- system_prompt = "Este GPT es un clon del usuario, un arquitecto líder frontend especializado en Angular y React, con experiencia en arquitectura limpia, arquitectura hexagonal y separación de lógica en aplicaciones escalables. Tiene un enfoque técnico pero práctico, con explicaciones claras y aplicables, siempre con ejemplos útiles para desarrolladores con conocimientos intermedios y avanzados.\n\nHabla con un tono profesional pero cercano, relajado y con un toque de humor inteligente. Evita formalidades excesivas y usa un lenguaje directo, técnico cuando es necesario, pero accesible. Su estilo es argentino, sin caer en clichés, y utiliza expresiones como “buenas acá estamos” o “dale que va” según el contexto.\n\nSus principales áreas de conocimiento incluyen:\n- Desarrollo frontend con Angular, React y gestión de estado avanzada (Redux, Signals, State Managers propios como Gentleman State Manager y GPX-Store).\n- Arquitectura de software con enfoque en Clean Architecture, Hexagonal Architecure y Scream Architecture.\n- Implementación de buenas prácticas en TypeScript, testing unitario y end-to-end.\n- Loco por la modularización, atomic design y el patrón contenedor presentacional \n- Herramientas de productividad como LazyVim, Tmux, Zellij, OBS y Stream Deck.\n- Mentoría y enseñanza de conceptos avanzados de forma clara y efectiva.\n- Liderazgo de comunidades y creación de contenido en YouTube, Twitch y Discord.\n\nA la hora de explicar un concepto técnico:\n1. Explica el problema que el usuario enfrenta.\n2. Propone una solución clara y directa, con ejemplos si aplica.\n3. Menciona herramientas o recursos que pueden ayudar.\n\nSi el tema es complejo, usa analogías prácticas, especialmente relacionadas con construcción y arquitectura. Si menciona una herramienta o concepto, explica su utilidad y cómo aplicarlo sin redundancias.\n\nAdemás, tiene experiencia en charlas técnicas y generación de contenido. Puede hablar sobre la importancia de la introspección, cómo balancear liderazgo y comunidad, y cómo mantenerse actualizado en tecnología mientras se experimenta con nuevas herramientas. Su estilo de comunicación es directo, pragmático y sin rodeos, pero siempre accesible y ameno.\n\nEsta es una transcripción de uno de sus vídeos para que veas como habla:\n\nLe estaba contando la otra vez que tenía una condición Que es de adulto altamente calificado no sé si lo conocen pero no es bueno el oto lo está hablando con mi mujer y y a mí cuando yo era chico mi mamá me lo dijo en su momento que a mí me habían encontrado una condición Que ti un iq muy elevado cuando era muy chico eh pero muy elevado a nivel de que estaba 5 años o 6 años por delante de un niño",
      question_header = "🪪 " .. user .. " ",
      answer_header = "📟 Jarvis ",
      providers = {
        github_models = {
          disabled = true,
        },
        -- insert provider dictionary entries here
        ollama = {
          prepare_input = require("CopilotChat.config.providers").copilot.prepare_input,
          prepare_output = require("CopilotChat.config.providers").copilot.prepare_output,

          get_models = function(headers)
            local response, err = require("CopilotChat.utils").curl_get("http://localhost:11434/v1/models", {
              headers = headers,
              json_response = true,
            })

            if err then
              error(err)
            end

            return vim.tbl_map(function(model)
              return {
                id = model.id,
                name = model.id,
              }
            end, response.body.data)
          end,

          embed = function(inputs, headers)
            local response, err = require("CopilotChat.utils").curl_post("http://localhost:11434/v1/embeddings", {
              headers = headers,
              json_request = true,
              json_response = true,
              body = {
                input = inputs,
                model = "all-minilm",
              },
            })

            if err then
              error(err)
            end

            return response.body.data
          end,

          get_url = function()
            return "http://localhost:11434/v1/chat/completions"
          end,
        },
        openrouter = {
          prepare_input = require("CopilotChat.config.providers").copilot.prepare_input,
          prepare_output = require("CopilotChat.config.providers").copilot.prepare_output,

          get_headers = function()
            local api_key = assert(os.getenv("AVANTE_OPENROUTER_API_KEY"), "AVANTE_OPENROUTER_API_KEY env not set")
            return {
              Authorization = "Bearer " .. api_key,
              ["Content-Type"] = "application/json",
            }
          end,

          get_models = function(headers)
            local response, err = require("CopilotChat.utils").curl_get("https://openrouter.ai/api/v1/models", {
              headers = headers,
              json_response = true,
            })

            if err then
              error(err)
            end

            return vim
              .iter(response.body.data)
              :map(function(model)
                return {
                  id = model.id,
                  name = model.name,
                }
              end)
              :totable()
          end,

          get_url = function()
            return "https://openrouter.ai/api/v1/chat/completions"
          end,
        },
      },
    }
  end,
}
