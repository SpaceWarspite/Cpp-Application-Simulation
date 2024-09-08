//---------------------------------------------------------------------------

#include <vcl.h>
#include <fstream>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------



void __fastcall TForm1::Timer1Timer(TObject *Sender)
{

fstream f("//nas//redirect//ilyuhinis//Documents//������//�������������������//Application0.3//������//Database+.mdb",ios::binary|ios::in);
if (f==0){

//return;
}
else{
StatusBar1->Panels->Items[1]->Text  = "����� =" + IntToStr(DataSource1->DataSet->RecordCount);
StatusBar1->Panels->Items[2]->Text = "����� =" + IntToStr(DataSource1->DataSet->RecNo);
StatusBar1->Panels->Items[4]->Text = 	DateToStr( Now() ) + "    " + TimeToStr( Time());
 }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::DBGrid1TitleClick(TColumn *Column)
{
if (ADOTable1->Active)
  if ((ADOTable1->Sort.Pos(Column->FieldName) > 0) && (ADOTable1->Sort.Pos("ASC") > 0))
	 ADOTable1->Sort = Column->FieldName + " DESC";
   else ADOTable1->Sort = Column->FieldName + " ASC";
}

//---------------------------------------------------------------------------

void __fastcall TForm1::priceClick(TObject *Sender)
{
ADOTable1->Filter="����= "+ QuotedStr(Edit1->Text);
ADOTable1->Filtered=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CencelFilterClick(TObject *Sender)
{
ADOTable1->Filtered=false;
Edit1->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
TForm2 *f = new TForm2( Application);
f->ShowModal();
}
//---------------------------------------------------------------------------






void __fastcall TForm1::Button2Click(TObject *Sender)
{
TForm3 *f = new TForm3( Application);
f->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ButtonSearchClick(TObject *Sender)
{
if((Edit1->Text)==" ")
{
	ShowMessage("��������� ������ �����");
}
else {
   switch (RadioGroup1->ItemIndex){
   case 0:
   ADOTable1->Filter = "����=" + Trim(Edit1->Text);
   break;
   case 1:
   ADOTable1->Filter = "������ LIKE '%" + Trim(Edit1->Text) + "%'";
   break;
   case 2:
   ADOTable1->Filter="����� LIKE '%" + Trim(Edit1->Text) + "%'";
   break;
   case 3:
   ADOTable1->Filter="������� LIKE '%" + Trim(Edit1->Text) + "%'";
   break;
   case 4:
   ADOTable1->Filter="�����_�����= " + Trim(Edit1->Text);
   break;
   }
   ADOTable1->Filtered=true;
   }


}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormCreate(TObject *Sender)
{

fstream f("//nas//redirect//ilyuhinis//Documents//������//�������������������//Application0.3//������//Database+.mdb",ios::binary|ios::in);
if (f==0){
ShowMessage("���� ������ �� �������");
Application->Terminate();

}
}
//---------------------------------------------------------------------------



int g=0;
void __fastcall TForm1::Edit1KeyPress(TObject *Sender, System::WideChar &Key)
{

if(Key == VK_SPACE)
{
   if(g==2)
   {
	   ShowMessage("������� ����� ��������!");
	   Edit1->Clear();
	   g=0;
   }
   else
   {
	   g=g+1;
   }
}

if(Edit1->Text.Length() >= 15)
Edit1->Clear();
if((RadioGroup1->ItemIndex) == 0){
	if( Key == VK_BACK )
		return;
	if( (Key < L'0') || (Key > L'9') )
	{
	ShowMessage("���������� ������� ������ �����");
	Key = 0;
	}
	}
if((RadioGroup1->ItemIndex) == 4){
	if( Key == VK_BACK )
		return;
	if( (Key < L'0') || (Key > L'9') )
	{
	ShowMessage("���������� ������� ������ �����");
	Key = 0;
	}
	}
}
//---------------------------------------------------------------------------

