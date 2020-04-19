.class public Lus/zoom/zrc/view/NumberKeyboardView;
.super Landroid/widget/FrameLayout;
.source "NumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;,
        Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;
    }
.end annotation


# instance fields
.field private adapter:Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;

.field private disableDeleteBtn:Z

.field private disableJoinBtn:Z

.field private disableNumberBtn:Z

.field private mGridView:Landroid/widget/GridView;

.field private mInputNumber:Landroid/widget/TextView;

.field private onclickJoinBtnListener:Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/NumberKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/NumberKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/NumberKeyboardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/NumberKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/NumberKeyboardView;->updateButtonStatus(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 53
    sget v0, Lus/zoom/zrcbox/R$layout;->number_keyboard:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget v0, Lus/zoom/zrcbox/R$id;->tv_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    .line 55
    sget v0, Lus/zoom/zrcbox/R$id;->gv_number_keyboard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mGridView:Landroid/widget/GridView;

    .line 56
    new-instance p1, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;-><init>(Lus/zoom/zrc/view/NumberKeyboardView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->adapter:Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;

    .line 57
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->adapter:Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mGridView:Landroid/widget/GridView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/view/NumberKeyboardView;->setBtnStatus()V

    return-void
.end method

.method private setBtnStatus()V
    .locals 5

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableJoinBtn:Z

    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableNumberBtn:Z

    .line 82
    iget-object v2, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iput-boolean v1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableDeleteBtn:Z

    .line 86
    iget-object v2, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xb

    if-lt v2, v3, :cond_1

    if-gt v2, v4, :cond_1

    .line 89
    iput-boolean v1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableJoinBtn:Z

    :cond_1
    if-lt v2, v4, :cond_3

    .line 92
    iput-boolean v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableNumberBtn:Z

    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableDeleteBtn:Z

    .line 95
    :cond_3
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/view/NumberKeyboardView;->updateButtonStatus()V

    return-void
.end method

.method private updateButtonStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/NumberKeyboardView;->updateButtonStatus(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateButtonStatus(Landroid/view/View;)V
    .locals 3

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 149
    sget v1, Lus/zoom/zrcbox/R$id;->tv_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 151
    iget-boolean v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableDeleteBtn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    sget p1, Lus/zoom/zrcbox/R$drawable;->number_keyboard_delete_disable_bg:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    sget p1, Lus/zoom/zrcbox/R$drawable;->number_keyboard_delete_normal_bg:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    if-ne v0, p1, :cond_3

    .line 159
    iget-boolean p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableJoinBtn:Z

    if-eqz p1, :cond_2

    .line 160
    sget p1, Lus/zoom/zrcbox/R$drawable;->join_meeting_key_join_disabled:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 162
    :cond_2
    sget p1, Lus/zoom/zrcbox/R$drawable;->number_keyboard_number_bg:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 165
    :cond_3
    iget-boolean p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableNumberBtn:Z

    if-eqz p1, :cond_4

    .line 166
    sget p1, Lus/zoom/zrcbox/R$drawable;->join_meeting_key_disabled:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 168
    :cond_4
    sget p1, Lus/zoom/zrcbox/R$drawable;->number_keyboard_number_bg:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanInputNumber()V
    .locals 2

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/NumberKeyboardView;->setBtnStatus()V

    return-void
.end method

.method public getInputNumber()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnclickJoinBtnListener()Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->onclickJoinBtnListener:Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 111
    iget-boolean p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableDeleteBtn:Z

    if-eqz p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 123
    iget-boolean p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableJoinBtn:Z

    if-eqz p1, :cond_3

    return-void

    .line 126
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->onclickJoinBtnListener:Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;

    if-eqz p1, :cond_6

    .line 127
    invoke-interface {p1}, Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;->onClickJoinBtn()V

    goto :goto_0

    .line 130
    :cond_4
    iget-boolean v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->disableNumberBtn:Z

    if-eqz v0, :cond_5

    return-void

    .line 133
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getMeetingNumberFromDisplyMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->adapter:Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/NumberKeyboardView$NumberKeyboardViewAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/NumberKeyboardView;->mInputNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_6
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/NumberKeyboardView;->setBtnStatus()V

    return-void
.end method

.method public setOnclickJoinBtnListener(Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lus/zoom/zrc/view/NumberKeyboardView;->onclickJoinBtnListener:Lus/zoom/zrc/view/NumberKeyboardView$OnClickJoinBtnListener;

    return-void
.end method
