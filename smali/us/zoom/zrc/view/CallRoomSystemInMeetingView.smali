.class public Lus/zoom/zrc/view/CallRoomSystemInMeetingView;
.super Lus/zoom/zrc/view/CallRoomSystemView;
.source "CallRoomSystemInMeetingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/CallRoomSystemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 34
    invoke-super {p0}, Lus/zoom/zrc/view/CallRoomSystemView;->init()V

    .line 35
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->vDismiss:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->keypadControllerView:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    new-instance v1, Lus/zoom/zrc/view/CallRoomSystemInMeetingView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView$1;-><init>(Lus/zoom/zrc/view/CallRoomSystemInMeetingView;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->setControllerListener(Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;)V

    return-void
.end method

.method protected showTip(Z)V
    .locals 9

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->tvTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->participants:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserNameToDisplay()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->show_keypad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$string;->dial_dtmf_keypad_tip:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v4

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    .line 73
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {v7, v3, v4, p1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, p1, v5, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, p1, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->tvTip:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 48
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->showTip(Z)V

    :cond_0
    return-void
.end method
