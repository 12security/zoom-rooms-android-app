.class public Lus/zoom/androidlib/widget/ZMTimePickerDialog;
.super Lus/zoom/androidlib/widget/ZMAlertDialog;
.source "ZMTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field calendar:Ljava/util/Calendar;

.field private final mCallback:Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 70
    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mCallback:Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;

    .line 71
    iput p4, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mInitialHourOfDay:I

    .line 72
    iput p5, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mInitialMinute:I

    .line 73
    iput-boolean p6, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mIs24HourView:Z

    .line 75
    sget p1, Lus/zoom/androidlib/R$string;->zm_time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->setTitle(I)V

    .line 77
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 78
    sget p2, Lus/zoom/androidlib/R$string;->zm_date_time_set:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    sget p2, Lus/zoom/androidlib/R$string;->zm_date_time_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x3

    invoke-virtual {p0, p3, p2, p0}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 83
    sget p2, Lus/zoom/androidlib/R$layout;->zm_time_picker_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->setView(Landroid/view/View;)V

    .line 85
    sget p2, Lus/zoom/androidlib/R$id;->timePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TimePicker;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 88
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean p2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mIs24HourView:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 89
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget p2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 90
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget p2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 91
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 54
    invoke-direct/range {v0 .. v6}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;-><init>(Landroid/content/Context;ILus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .line 113
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mCallback:Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 115
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mCallback:Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 116
    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 115
    invoke-interface {v0, v1, v2, v3}, Lus/zoom/androidlib/widget/ZMTimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 97
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->tryNotifyTimeSet()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    invoke-super {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 139
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 141
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 142
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 128
    invoke-super {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    .line 129
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    .line 130
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is24hour"

    .line 131
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .line 122
    invoke-super {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->onStop()V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 104
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 105
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
