.class public Lus/zoom/androidlib/widget/ZMAlertDialog;
.super Landroid/app/Dialog;
.source "ZMAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;,
        Lus/zoom/androidlib/widget/ZMAlertDialog$ButtonHandler;
    }
.end annotation


# instance fields
.field private buttonPanel:Landroid/widget/LinearLayout;

.field private contentPanel:Landroid/widget/LinearLayout;

.field private customFrame:Landroid/widget/FrameLayout;

.field private holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

.field private mAlertIcon:Landroid/widget/ImageView;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field protected mContext:Landroid/content/Context;

.field private mCustomPanelBottomGap:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTopPanel:Landroid/widget/LinearLayout;

.field private msg:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 81
    sget p2, Lus/zoom/androidlib/R$style;->ZMDialog_Material:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 197
    new-instance p2, Lus/zoom/androidlib/widget/ZMAlertDialog$1;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$1;-><init>(Lus/zoom/androidlib/widget/ZMAlertDialog;)V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 82
    new-instance p2, Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-direct {p2, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 83
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Lus/zoom/androidlib/widget/ZMAlertDialog$ButtonHandler;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lus/zoom/androidlib/widget/ZMAlertHolder;)V
    .locals 1

    .line 70
    sget v0, Lus/zoom/androidlib/R$style;->ZMDialog_Material:I

    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;-><init>(Lus/zoom/androidlib/widget/ZMAlertHolder;I)V

    return-void
.end method

.method public constructor <init>(Lus/zoom/androidlib/widget/ZMAlertHolder;I)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 197
    new-instance p2, Lus/zoom/androidlib/widget/ZMAlertDialog$1;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$1;-><init>(Lus/zoom/androidlib/widget/ZMAlertDialog;)V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 76
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Lus/zoom/androidlib/widget/ZMAlertDialog$ButtonHandler;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/androidlib/widget/ZMAlertDialog;)Lus/zoom/androidlib/widget/ZMAlertHolder;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 180
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 184
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 188
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    invoke-static {v3}, Lus/zoom/androidlib/widget/ZMAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private createListView()Landroid/widget/ListView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 512
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lus/zoom/androidlib/R$layout;->zm_select_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 514
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 515
    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 516
    new-instance v1, Lus/zoom/androidlib/widget/SingleItemAdapter;

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 517
    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getItems()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lus/zoom/androidlib/widget/SingleItemAdapter;-><init>([Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 518
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getCheckIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/widget/SingleItemAdapter;->setIndex(I)V

    .line 519
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    return-object v2

    .line 526
    :cond_2
    :goto_0
    new-instance v1, Lus/zoom/androidlib/widget/ZMAlertDialog$2;

    invoke-direct {v1, p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$2;-><init>(Lus/zoom/androidlib/widget/ZMAlertDialog;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 543
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getListDividerHeight()I

    move-result v1

    if-ltz v1, :cond_3

    .line 545
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_3
    return-object v0
.end method

.method private hideContentPanel()V
    .locals 3

    .line 400
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 355
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :pswitch_0
    iput-object p4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 364
    :pswitch_1
    iput-object p4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 368
    :pswitch_2
    iput-object p4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupButtons()Z
    .locals 7

    .line 251
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isVerticalOptionStyle()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 252
    sget v0, Lus/zoom/androidlib/R$id;->buttonPanelHorizontal:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    sget v0, Lus/zoom/androidlib/R$id;->buttonPanelVertical:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    sget v0, Lus/zoom/androidlib/R$id;->buttonV1:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 255
    sget v0, Lus/zoom/androidlib/R$id;->buttonV2:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 256
    sget v0, Lus/zoom/androidlib/R$id;->buttonV3:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 258
    :cond_0
    sget v0, Lus/zoom/androidlib/R$id;->button1:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 259
    sget v0, Lus/zoom/androidlib/R$id;->button2:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 260
    sget v0, Lus/zoom/androidlib/R$id;->button3:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 263
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_1

    .line 268
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v4}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    .line 273
    :goto_1
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v4}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 278
    :cond_2
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v5}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 283
    :goto_2
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v4}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 288
    :cond_3
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v5}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_3
    if-eqz v0, :cond_8

    .line 305
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 307
    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 308
    invoke-virtual {v5}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getPositiveButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    const/4 v6, -0x1

    .line 306
    invoke-direct {p0, v6, v1, v5, v4}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 310
    :cond_4
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, -0x2

    .line 311
    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 312
    invoke-virtual {v5}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 313
    invoke-virtual {v6}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 311
    invoke-direct {p0, v1, v5, v6, v4}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 315
    :cond_5
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, -0x3

    .line 316
    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 317
    invoke-virtual {v5}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 318
    invoke-virtual {v6}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getNeutralButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 316
    invoke-direct {p0, v1, v5, v6, v4}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 320
    :cond_6
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isVerticalOptionStyle()Z

    move-result v1

    if-nez v1, :cond_9

    .line 321
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_4
    if-ltz v1, :cond_9

    .line 322
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 324
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 330
    :cond_8
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2
.end method

.method private setupContent()V
    .locals 7

    .line 407
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 408
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->hideContentPanel()V

    goto/16 :goto_1

    .line 410
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v2, :cond_5

    .line 411
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 414
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->hideContentPanel()V

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 419
    :cond_2
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 423
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mContext:Landroid/content/Context;

    sget v5, Lus/zoom/androidlib/R$style;->ZMTextView_Medium_DialogMsg:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    if-nez v2, :cond_4

    .line 427
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 433
    :cond_5
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 434
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    goto :goto_0

    .line 460
    :cond_6
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    .line 461
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->hideContentPanel()V

    .line 462
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->customFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 463
    sget v0, Lus/zoom/androidlib/R$id;->customView:I

    .line 464
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 465
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->ismViewSpacingSpecified()Z

    .line 468
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v4}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isHideBottomGap()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v1, 0x8

    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 435
    :cond_8
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    .line 439
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->createListView()Landroid/widget/ListView;

    move-result-object v0

    .line 440
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 448
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    sget v0, Lus/zoom/androidlib/R$id;->alertOptionTitle:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 450
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitleTxtColor()I

    move-result v3

    if-eqz v3, :cond_9

    .line 453
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitleTxtColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    :cond_9
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitleFontSize()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    .line 455
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitleFontSize()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 456
    :cond_a
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isSmallTitleMutlilineStyle()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 458
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_b
    :goto_1
    return-void
.end method

.method private setupLayoutBackground()V
    .locals 5

    .line 166
    sget v0, Lus/zoom/androidlib/R$id;->dialog_root_layout:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 168
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :pswitch_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 92
    :pswitch_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 94
    :pswitch_2
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 101
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 104
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getmView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 109
    :cond_1
    sget p1, Lus/zoom/androidlib/R$layout;->zm_alert_layout:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setContentView(I)V

    .line 110
    sget p1, Lus/zoom/androidlib/R$id;->customPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->customFrame:Landroid/widget/FrameLayout;

    .line 111
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    sget p1, Lus/zoom/androidlib/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    .line 114
    sget p1, Lus/zoom/androidlib/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    .line 115
    sget p1, Lus/zoom/androidlib/R$id;->buttonPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    .line 116
    sget p1, Lus/zoom/androidlib/R$id;->topPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    const/16 p1, 0x11

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v0, :cond_2

    .line 121
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setupLayoutBackground()V

    .line 125
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    .line 126
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitle(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMsg(Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 133
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitleView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 136
    sget v0, Lus/zoom/androidlib/R$id;->customTopPanel:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 143
    :cond_4
    sget p1, Lus/zoom/androidlib/R$id;->alertTitle:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->title:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_5
    :goto_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContentPadding()Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 148
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContentPadding()Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    iget v1, p1, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->left:I

    iget v2, p1, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->top:I

    iget v3, p1, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->right:I

    iget p1, p1, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 152
    :cond_6
    sget p1, Lus/zoom/androidlib/R$id;->alertdialogmsg:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->msg:Landroid/widget/TextView;

    .line 153
    sget p1, Lus/zoom/androidlib/R$id;->customPanelBottomGap:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    .line 154
    sget p1, Lus/zoom/androidlib/R$id;->alertIcon:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    .line 155
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "blu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 156
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    sget v0, Lus/zoom/androidlib/R$drawable;->ic_dialog_alert:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 158
    :cond_7
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_1
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setupButtons()Z

    .line 160
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setupContent()V

    .line 161
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isCancelable()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 499
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 501
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 506
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 508
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 394
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :pswitch_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 489
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setCancelable(Z)V

    .line 490
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitle(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmView(Landroid/view/View;)V

    return-void
.end method
