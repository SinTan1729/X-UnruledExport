-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Export to unruled PDF", ["callback"] = "exportUnruledPDF", ["accelerator"] = "<Alt>u"});
end

local DEFAULT_PATH = "/tmp/temp"  -- change this to get a different default path for xopp-files that have not been saved yet

function exportUnruledPDF()
  local pdfName = getStem() .. "_unruled.pdf"
  app.export({["outputFile"] = pdfName, ["background"] = "unruled"})
  -- use the "range", "background" and "progressiveMode" fields for more customization
end

function getStem()
  local xoppName = app.getDocumentStructure()["xoppFilename"]
  if (xoppName ~= "" and xoppName ~= nil) then 
    return xoppName:match("(.+)%..+$")
  else
    print("Exporting to default path. Consider saving the xopp-file before exporting! ")
    return DEFAULT_PATH
  end
end

