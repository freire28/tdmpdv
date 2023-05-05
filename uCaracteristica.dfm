inherited frmCadCaracteristicas: TfrmCadCaracteristicas
  Caption = 'Caracteristicas'
  ClientHeight = 390
  ClientWidth = 620
  Position = poMainFormCenter
  ExplicitWidth = 636
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited rbnBotoes: TdxRibbon
    Width = 620
    ExplicitWidth = 620
    inherited dxtabDados: TdxRibbonTab
      Index = 0
    end
  end
  inherited lcDados: TdxLayoutControl
    Width = 620
    Height = 264
    ExplicitWidth = 620
    ExplicitHeight = 264
    inherited cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 572
      Height = 164
      TabOrder = 2
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 572
      ExplicitHeight = 164
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsDados
        OptionsData.Editing = False
        object cxGrid1DBTableView1ID_CARACTERISTICA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CARACTERISTICA'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
        end
        object cxGrid1DBTableView1TIPO_DADOS: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_DADOS'
          Width = 78
        end
      end
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [1]
      Left = 24
      Top = 44
      Caption = 'Tipo'
      DataBinding.DataField = 'TIPO_DADOS'
      DataBinding.DataSource = dsDados
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Descritivo'
          Value = '0'
        end
        item
          Caption = 'Numerico'
          Value = '1'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 35
      Width = 157
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 24
      Top = 103
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 572
    end
    inherited lcDadosGroup_Root1: TdxLayoutGroup
      AlignHorz = ahClient
    end
    inherited dxLgCadastro: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    inherited dxLgPesquisa: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    inherited dxLayoutItem1: TdxLayoutItem
      ControlOptions.OriginalHeight = 164
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tipo Informa'#231#227'o'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLgCadastro
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxbrmngrMenu: TdxBarManager
    PixelsPerInch = 96
    inherited dxbrmngrMenuBar1: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 109
      FloatClientHeight = 138
    end
    inherited xDescricaoPesquisa: TdxBarEdit
      ShowCaption = True
    end
  end
  inherited cxmglst1: TcxImageList
    FormatVersion = 1
  end
  inherited fdqDados: TFDQuery
    BeforeOpen = fdqDadosBeforeOpen
    SQL.Strings = (
      'SELECT *'
      '  FROM CARACTERISTICAS_PRODUTO'
      
        '  WHERE (:DESCRICAO = '#39'-1'#39' ) or ( DESCRICAO LIKE '#39'%'#39'+:DESCRICAO+' +
        #39'%'#39' )')
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqDadosID_CARACTERISTICA: TFDAutoIncField
      FieldName = 'ID_CARACTERISTICA'
      Origin = 'ID_CARACTERISTICA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object fdqDadosTIPO_DADOS: TStringField
      FieldName = 'TIPO_DADOS'
      Origin = 'TIPO_DADOS'
      Required = True
      Size = 1
    end
  end
end
