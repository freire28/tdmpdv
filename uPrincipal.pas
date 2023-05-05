unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,  dxRibbonCustomizationForm,
  dxRibbonSkins, cxClasses, dxRibbon, cxImage, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, dxBar, cxBarEditItem,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    dxrbn1: TdxRibbon;
    dxrbn1Tab1: TdxRibbonTab;
    dxrbntbdxrbn1Tab2: TdxRibbonTab;
    dxrbntbdxrbn1Tab3: TdxRibbonTab;
    dxbrmngrMenu: TdxBarManager;
    dxbrmngrMenuBar1: TdxBar;
    dxbrmngrMenuBar2: TdxBar;
    dxbrmngrMenuBar3: TdxBar;
    dxbrlrgbtnGerenciamento: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    cxbrdtm1: TcxBarEditItem;
    dxbrsbtm1: TdxBarSubItem;
    dxbrbtn3: TdxBarButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn: TdxBarLargeButton;
    dxbrlrgbtnUnidade: TdxBarLargeButton;
    dxbrlrgbtnSetor: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxbrlrgbtnParametros: TdxBarLargeButton;
    dxbrlrgbtnCalibracaoRF: TdxBarLargeButton;
    actmgrPrincipal: TActionManager;
    actCadCategoria: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actCadProdutos: TAction;
    actCadBairro: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actMunicipio: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    actEntregador: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actCategoria: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxrbn1Tab2: TdxRibbonTab;
    dxbrmngrMenuBar4: TdxBar;
    Action1: TAction;
    actConfiguracoes: TAction;
    Action5: TAction;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure actFCadClientesExecute(Sender: TObject);
    procedure actCadCategoriaExecute(Sender: TObject);
    procedure actCadProdutosExecute(Sender: TObject);
    procedure actCadBairroExecute(Sender: TObject);
    procedure actMunicipioExecute(Sender: TObject);
    procedure actEntregadorExecute(Sender: TObject);
    procedure actCategoriaExecute(Sender: TObject);
    procedure actConfiguracoesExecute(Sender: TObject);
  private
    FidUsuario: integer;
    { Private declarations }
  public
    { Public declarations }
    property idUsuario : integer read FidUsuario write FidUsuario;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCliente, uCaracteristica, uProdutos;
  {
uses uCliente,  ufuncoesgerais, uCategoria , System.IniFiles, uDMIFood,
  uProdutos, uBairro, uMunicipio, uEntregador, uClasseProduto, uConfiguracoes;
   }

procedure TfrmPrincipal.actCadCategoriaExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadCaracteristicas, frmCadCaracteristicas);
  frmCadCaracteristicas.ShowModal;
  frmCadCaracteristicas.Free;
end;

procedure TfrmPrincipal.actCadProdutosExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmProdutos, frmProdutos);
  frmProdutos.ShowModal;
  frmProdutos.Free;

end;

procedure TfrmPrincipal.actEntregadorExecute(Sender: TObject);
begin
{  Application.CreateForm(TfrmEntregador, frmEntregador);
  frmEntregador.ShowModal;
  frmEntregador.Free;
   }
end;

procedure TfrmPrincipal.actFCadClientesExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes, frmClientes);
  frmClientes.ShowModal;
  frmClientes.Free;

end;

procedure TfrmPrincipal.actConfiguracoesExecute(Sender: TObject);
begin
 { Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  frmConfiguracoes.ShowModal;
  frmConfiguracoes.Free;
    }
end;

procedure TfrmPrincipal.actCategoriaExecute(Sender: TObject);
begin
 { Application.CreateForm(TfrmClasseProduto, frmClasseProduto);
  frmClasseProduto.ShowModal;
  frmClasseProduto.Free;
    }
end;

procedure TfrmPrincipal.actMunicipioExecute(Sender: TObject);
begin
 { Application.CreateForm(TfrmMunicipio, frmMunicipio);
  frmMunicipio.ShowModal;
  frmMunicipio.Free;
    }
end;

procedure TfrmPrincipal.actCadBairroExecute(Sender: TObject);
begin
{  Application.CreateForm(TfrmBairro, frmBairro);
  frmBairro.ShowModal;
  frmBairro.Free;
    }

end;

end.
