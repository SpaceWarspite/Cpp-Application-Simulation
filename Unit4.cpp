//---------------------------------------------------------------------------
#define PATH "//nas//redirect//ilyuhinis//Documents//РОСНОУ//КурсоваяИнформатика//Application0.3//Работа//Database+.mdb"
#include <vcl.h>
#include <fstream>
#pragma hdrstop

#include "Unit4.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------







void __fastcall TForm4::FormCreate(TObject *Sender)
{
fstream f("//nas//redirect//ilyuhinis//Documents//РОСНОУ//КурсоваяИнформатика//Application0.3//Работа//Database+.mdb",ios::binary|ios::in);
if (f==0){
ShowMessage("База данных не найдена");
Application->Terminate();
}
}
//---------------------------------------------------------------------------


void __fastcall TForm4::Timer1Timer(TObject *Sender)
{
fstream f(PATH,ios::binary|ios::in);
if (f==0){
ShowMessage("База данных не найдена");
Application->Terminate();
}
}
//---------------------------------------------------------------------------

void __fastcall TForm4::OpenClick(TObject *Sender)
{

ADOConnection1->Close();
OpenDialog1->Execute();
String WayToBase = OpenDialog1->FileName;
ADOConnection1->ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+WayToBase+";Persist Security Info=True";
ADOTable1->Active=true;

}
//---------------------------------------------------------------------------

void __fastcall TForm4::CloseClick(TObject *Sender)
{
ADOConnection1->Close();
}
//---------------------------------------------------------------------------

