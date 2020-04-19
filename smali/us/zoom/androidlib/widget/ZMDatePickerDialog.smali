.class public Lus/zoom/androidlib/widget/ZMDatePickerDialog;
.super Lus/zoom/androidlib/widget/ZMAlertDialog;
.source "ZMDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field currentapiVersion:I

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;III)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->currentapiVersion:I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 87
    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCallBack:Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 91
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 92
    sget p2, Lus/zoom/androidlib/R$string;->zm_date_time_set:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    sget p2, Lus/zoom/androidlib/R$string;->zm_date_time_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x3

    invoke-virtual {p0, p3, p2, p0}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 97
    sget p2, Lus/zoom/androidlib/R$layout;->zm_date_picker_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->setView(Landroid/view/View;)V

    .line 99
    sget p2, Lus/zoom/androidlib/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 100
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1, p4, p5, p6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 101
    iget p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->currentapiVersion:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    .line 102
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 104
    :cond_0
    invoke-direct {p0, p4, p5, p6}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 65
    invoke-direct/range {v0 .. v6}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;-><init>(Landroid/content/Context;ILus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .line 145
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCallBack:Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 147
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCallBack:Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 148
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 147
    invoke-interface {v0, v1, v2, v3, v4}, Lus/zoom/androidlib/widget/ZMDatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitl(III)V
    .locals 2

    .line 173
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 174
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 175
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 177
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x18016

    .line 176
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 158
    iget v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->currentapiVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->updateTitl(III)V

    goto :goto_0

    .line 162
    :cond_0
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mTitleNeedsUpdate:Z

    const-string p1, " "

    .line 164
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->updateTitl(III)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .line 127
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 110
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->tryNotifyDateSet()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 117
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 118
    invoke-direct {p0, p2, p3, p4}, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-super {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 199
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 200
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 201
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 188
    invoke-super {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    .line 189
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    .line 190
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    .line 191
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .line 154
    invoke-super {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onStop()V

    return-void
.end method

.method public show(JJ)V
    .locals 4

    .line 210
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 212
    invoke-virtual {v0, p3, p4}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_0
    cmp-long p3, p1, v1

    if-lez p3, :cond_1

    .line 215
    iget-object p3, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p3, p1, p2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 218
    :cond_1
    invoke-super {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->show()V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 141
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void
.end method
