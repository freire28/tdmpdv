inherited frmProdutos: TfrmProdutos
  Caption = 'Cad. Produtos'
  ClientHeight = 537
  ClientWidth = 631
  ExplicitWidth = 643
  ExplicitHeight = 575
  TextHeight = 13
  inherited rbnBotoes: TdxRibbon
    Width = 631
    ExplicitWidth = 631
    inherited dxtabDados: TdxRibbonTab
      Index = 0
    end
  end
  inherited lcDados: TdxLayoutControl
    Width = 631
    Height = 411
    ExplicitWidth = 627
    ExplicitHeight = 410
    inherited cxGrid1: TcxGrid
      Width = 1260
      ExplicitWidth = 1260
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 119
      Top = 67
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 305
    end
    object cxDBCheckBox1: TcxDBCheckBox [3]
      Left = 24
      Top = 44
      Caption = 'Ativo'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [4]
      Left = 24
      Top = 94
      Caption = 'Tipo'
      DataBinding.DataField = 'TIPO_PRODUTO'
      DataBinding.DataSource = dsDados
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Simples'
          Value = '0'
        end
        item
          Caption = 'Vari'#225'vel'
          Value = '1'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 41
      Width = 583
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [5]
      Left = 119
      Top = 168
      DataBinding.DataField = 'GENERO_PRODUTO'
      DataBinding.DataSource = dsDados
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListSource = dmPrincipal.dsGeneroProduto
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 488
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 119
      Top = 222
      DataBinding.DataField = 'PRECO_CUSTO'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 119
      Top = 249
      DataBinding.DataField = 'PRE'#199'O_VENDA'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 346
      Top = 222
      DataBinding.DataField = 'PRECO_MINIMO_VENDA'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [9]
      Left = 346
      Top = 276
      AutoSize = False
      DataBinding.DataField = 'ESTOQUE_ATUAL'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Height = 21
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [10]
      Left = 119
      Top = 276
      DataBinding.DataField = 'ESTOQUE_RISCO'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [11]
      Left = 119
      Top = 195
      DataBinding.DataField = 'CODIGO_BARRAS_EAN'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 488
    end
    object cxDBTextEdit9: TcxDBTextEdit [12]
      Left = 119
      Top = 303
      DataBinding.DataField = 'NCM'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [13]
      Left = 119
      Top = 141
      DataBinding.DataField = 'KIT'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [14]
      Left = 119
      Top = 330
      DataBinding.DataField = 'IPI'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 488
    end
    object cxDBTextEdit11: TcxDBTextEdit [15]
      Left = 119
      Top = 357
      DataBinding.DataField = 'ICMS'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 488
    end
    inherited dxLgCadastro: TdxLayoutGroup
      ItemIndex = 8
      LayoutDirection = ldVertical
      Index = 1
    end
    inherited dxLgPesquisa: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit1'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nome do Produto'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 305
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'G'#234'nero'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Pre'#231'o Custo'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Pre'#231'o Venda'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Pre'#231'o M'#237'nimo Venda'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroupEstoque
      CaptionOptions.Text = 'Estoque Atual'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroupEstoque
      CaptionOptions.Text = 'Estoque Risco'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo Barras EAN'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroupImpostos
      CaptionOptions.Text = 'NCM'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLgCadastro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Produto '#233' um KIT?'
      Control = cxDBSpinEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLgCadastro
      CaptionOptions.Text = 'IPI'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLgCadastro
      CaptionOptions.Text = 'ICMS'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutGroupPreco: TdxLayoutGroup
      Parent = dxLgCadastro
      CaptionOptions.Text = 'Pre'#231'o'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroupEstoque: TdxLayoutGroup
      Parent = dxLgCadastro
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutGroupImpostos: TdxLayoutGroup
      Parent = dxLgCadastro
      CaptionOptions.Text = 'New Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroupPreco
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroupPreco
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
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
  end
  inherited cxmglst1: TcxImageList
    FormatVersion = 1
  end
  inherited fdqDados: TFDQuery
    SQL.Strings = (
      'SELECT DESCRICAO'
      '      ,TIPO_PRODUTO'
      '      ,GENERO_PRODUTO'
      '      ,PRECO_CUSTO'
      '      ,PRE'#199'O_VENDA'
      '      ,ATIVO'
      '      ,IPI'
      '      ,ICMS'
      '      ,ICMSST'
      '      ,PRECO_MINIMO_VENDA'
      '      ,ESTOQUE_ATUAL'
      '      ,ESTOQUE_RISCO'
      '      ,CODIGO_BARRAS_EAN'
      '      ,NCM'
      '      ,KIT'
      '  FROM PRODUTOS')
    object fdqDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object fdqDadosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
    end
    object fdqDadosGENERO_PRODUTO: TIntegerField
      FieldName = 'GENERO_PRODUTO'
      Origin = 'GENERO_PRODUTO'
      Required = True
    end
    object fdqDadosPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqDadosPREÇO_VENDA: TFMTBCDField
      FieldName = 'PRE'#199'O_VENDA'
      Origin = '[PRE'#199'O_VENDA]'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqDadosATIVO: TWideStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object fdqDadosIPI: TFMTBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 2
    end
    object fdqDadosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object fdqDadosICMSST: TFMTBCDField
      FieldName = 'ICMSST'
      Origin = 'ICMSST'
      Precision = 18
      Size = 2
    end
    object fdqDadosPRECO_MINIMO_VENDA: TWideStringField
      FieldName = 'PRECO_MINIMO_VENDA'
      Origin = 'PRECO_MINIMO_VENDA'
      FixedChar = True
      Size = 10
    end
    object fdqDadosESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
      Size = 2
    end
    object fdqDadosESTOQUE_RISCO: TFMTBCDField
      FieldName = 'ESTOQUE_RISCO'
      Origin = 'ESTOQUE_RISCO'
      Precision = 18
      Size = 2
    end
    object fdqDadosCODIGO_BARRAS_EAN: TFMTBCDField
      FieldName = 'CODIGO_BARRAS_EAN'
      Origin = 'CODIGO_BARRAS_EAN'
      Precision = 18
      Size = 2
    end
    object fdqDadosNCM: TWideStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 10
    end
    object fdqDadosKIT: TIntegerField
      FieldName = 'KIT'
      Origin = 'KIT'
    end
  end
  object rstclntBuscaPedidos: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'https://tdsistemasesolucoes.vendaerp.com.br/api/request/pedidos/' +
      'pesquisar?codigo=0&origem=Venda Direta&status=Pedido&categoria=&' +
      'cliente=&dataInicial=01/08/2019&dataFinal=10/08/2019&pageSize=10' +
      '00&skip=0'
    Params = <>
    SynchronizedEvents = False
    Left = 376
    Top = 48
  end
  object rstrqstPedidos: TRESTRequest
    Client = rstclntBuscaPedidos
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'authorization-token'
        Options = [poDoNotEncode]
        Value = 
          '6ec397dd1c7b7cc77d1ce198f593805f980593ccda9552b45c54460da3706098' +
          '5599a3e42368d2db3ee96ba30bb6a7844d67f1d41c3e99d0920b2bf4c8035894' +
          '8735edc0bf88b7ecc469d3fcb93d9b260e32586b5d62e0693385d44dfb6b767e' +
          '84c9f1956f483e8f4e19b6ae6f90991315602531f9e6a5e9fdb8970cb84bd925'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'user'
        Options = [poDoNotEncode]
        Value = 'financeiro@topfishpescados.com.br'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'app'
        Options = [poDoNotEncode]
        Value = 'topfish'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 408
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    Left = 440
    Top = 48
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = fdqDados
    FieldDefs = <>
    Response = RESTResponse1
    Left = 472
    Top = 48
  end
end
