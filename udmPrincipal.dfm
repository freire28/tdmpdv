object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 488
  Width = 628
  object conexaobanco: TFDConnection
    Params.Strings = (
      'Server=DENIS-TATI'
      'Database=TDMPDV'
      'User_Name=ADMINISTRADOR'
      'Password=123456'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 64
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    ODBCDriver = 'SQL Server'
    Left = 80
    Top = 64
  end
  object fdqUsuario: TFDQuery
    Connection = conexaobanco
    SQL.Strings = (
      'select * from usuarios where login = :login')
    Left = 32
    Top = 120
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqUsuarioID_USUARIO: TFDAutoIncField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object fdqUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 30
    end
    object fdqUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object fdqUsuarioDATA_CRIACAO: TSQLTimeStampField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
      Required = True
    end
    object fdqUsuarioATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
    object fdqUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object fdqUsuarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 30
    end
    object fdqUsuarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 30
    end
    object fdqUsuarioADMINISTRADOR: TIntegerField
      FieldName = 'ADMINISTRADOR'
      Origin = 'ADMINISTRADOR'
    end
  end
  object fdqRetornaDataServidor: TFDQuery
    Connection = conexaobanco
    SQL.Strings = (
      'select GETDATE() as dataAtual')
    Left = 96
    Top = 224
  end
end
