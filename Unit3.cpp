//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm3::Button1Click(TObject *Sender)
{
if(Edit1->Text == "1111")
	{this->Close() ;ShowMessage("Добро пожаловать") ; TForm4 *f = new TForm4( Application) ; f->ShowModal(); }
else
	{ShowMessage("Неверный пароль");Edit1->Clear();}
}
//---------------------------------------------------------------------------
void __fastcall TForm3::Edit1KeyPress(TObject *Sender, System::WideChar &Key)
{
if(Edit1->Text.Length() >= 15)
Edit1->Clear();
}
//---------------------------------------------------------------------------

