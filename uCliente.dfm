object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cad. Cliente'
  ClientHeight = 281
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 579
    Height = 281
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 656
    ExplicitHeight = 465
    object cxDBNClientes: TcxDBNavigator
      Left = 24
      Top = 44
      Width = 520
      Height = 25
      Buttons.CustomButtons = <>
      Buttons.First.Hint = 'Primeiro'
      Buttons.First.Visible = True
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Hint = 'Cliente Anterior'
      Buttons.Next.Hint = 'Pr'#243'ximo Cliente'
      Buttons.NextPage.Visible = False
      Buttons.Last.Hint = 'Ultimo'
      Buttons.Last.Visible = False
      Buttons.Insert.Hint = 'Inserir Cliente'
      Buttons.Post.Hint = 'Gravar'
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dsCliente
      TabOrder = 0
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 89
      Top = 161
      DataBinding.DataField = 'NOME'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 445
    end
    object cxDBTECPF: TcxDBTextEdit
      Left = 89
      Top = 188
      DataBinding.DataField = 'CPFCNPJ'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnExit = cxDBTECPFExit
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 411
      Top = 188
      DataBinding.DataField = 'DATA_NASCIMENTO'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 123
    end
    object cxDBTECelular: TcxDBTextEdit
      Left = 89
      Top = 215
      DataBinding.DataField = 'CELULAR1'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      OnKeyPress = cxDBTECelularKeyPress
      Width = 121
    end
    object cxDBTECelular2: TcxDBTextEdit
      Left = 411
      Top = 215
      DataBinding.DataField = 'CELULAR2'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      OnKeyPress = cxDBTECelular2KeyPress
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 295
      Top = 93
      DataBinding.DataField = 'DATA_CADASTRO'
      DataBinding.DataSource = dsCliente
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 89
      Top = 93
      DataBinding.DataField = 'ID_CLIENTE'
      DataBinding.DataSource = dsCliente
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 36
      Top = 120
      Caption = 'Tipo Pessoa'
      DataBinding.DataField = 'TIPO_PESSOAL'
      DataBinding.DataSource = dsCliente
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'F'#237'sica'
          Value = 'F'
        end
        item
          Caption = 'Jur'#237'dica'
          Value = 'J'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 35
      Width = 125
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxDBNavigator1'
      CaptionOptions.Visible = False
      Control = cxDBNClientes
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 264
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLGEdicao
      CaptionOptions.Text = 'Opera'#231#245'es'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Nome'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 445
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'CPF/CNPJ'
      Control = cxDBTECPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Data Nascimento'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Celular'
      Control = cxDBTECelular
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Celular 2'
      Control = cxDBTECelular2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Data. Cadastro'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'C'#243'digo'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Hint = 'Tipo Pessoa'
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLGEdicao
      CaptionOptions.Text = 'Dados Cliente'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 1
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup4
      SizeOptions.Height = 10
      SizeOptions.Width = 103
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLGEdicao: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Edi'#231#227'o'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup7
      SizeOptions.Height = 10
      SizeOptions.Width = 103
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object fdqClientes: TFDQuery
    BeforePost = fdqClientesBeforePost
    Connection = dmPrincipal.conexaobanco
    SQL.Strings = (
      'select * from clientes')
    Left = 400
    Top = 8
    object fdqClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdqClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdqClientesDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object fdqClientesTIPO_PESSOAL: TStringField
      FieldName = 'TIPO_PESSOAL'
      Origin = 'TIPO_PESSOAL'
      FixedChar = True
      Size = 1
    end
    object fdqClientesCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Origin = 'CPFCNPJ'
      Size = 22
    end
    object fdqClientesDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object fdqClientesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 22
    end
    object fdqClientesCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 22
    end
  end
  object dsCliente: TDataSource
    DataSet = fdqClientes
    Left = 440
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 296
    object AlterarEndereo1: TMenuItem
      Caption = 'Alterar Endere'#231'o'
    end
  end
end
