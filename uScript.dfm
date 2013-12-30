object Script: TScript
  OldCreateOrder = False
  Height = 146
  Width = 325
  object Debugger: TatScriptDebugger
    UpdateSourceCode = True
    MemoReadOnly = False
    Left = 128
    Top = 32
  end
  object Engine: TatPascalScripter
    SaveCompiledCode = False
    OnCompileError = EngineCompileError
    OnRuntimeError = EngineRuntimeError
    ShortBooleanEval = False
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)'
      '$(CURDIR)\Scripts'
      '$(APPDIR)\Scripts'
      '')
    LibOptions.SourceFileExt = '.psc'
    LibOptions.CompiledFileExt = '.pcu'
    LibOptions.UseScriptFiles = False
    CallExecHookEvent = False
    Left = 56
    Top = 32
  end
end
