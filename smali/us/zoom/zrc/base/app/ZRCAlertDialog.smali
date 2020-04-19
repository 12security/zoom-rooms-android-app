.class public Lus/zoom/zrc/base/app/ZRCAlertDialog;
.super Landroid/app/Dialog;
.source "ZRCAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;,
        Lus/zoom/zrc/base/app/ZRCAlertDialog$ButtonHandler;
    }
.end annotation


# instance fields
.field private buttonPanel:Landroid/widget/LinearLayout;

.field private contentPanel:Landroid/widget/LinearLayout;

.field private customFrame:Landroid/widget/FrameLayout;

.field private holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

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

    .line 73
    sget p2, Lus/zoom/zrcbox/R$style;->ZRCDialog_Material:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 192
    new-instance p2, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialog;)V

    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 74
    new-instance p2, Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 75
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mContext:Landroid/content/Context;

    .line 76
    new-instance p1, Lus/zoom/zrc/base/app/ZRCAlertDialog$ButtonHandler;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrc/base/app/ZRCAlertHolder;)V
    .locals 1

    .line 62
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCDialog_Material:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;-><init>(Lus/zoom/zrc/base/app/ZRCAlertHolder;I)V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrc/base/app/ZRCAlertHolder;I)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 192
    new-instance p2, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialog;)V

    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 68
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Lus/zoom/zrc/base/app/ZRCAlertDialog$ButtonHandler;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Lus/zoom/zrc/base/app/ZRCAlertHolder;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    return-object p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 179
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 184
    invoke-static {v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private createListView()Landroid/widget/ListView;
    .locals 4

    .line 495
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lus/zoom/zrcbox/R$layout;->zm_select_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 497
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 498
    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 499
    new-instance v1, Lus/zoom/zrc/base/app/SingleItemAdapter;

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 500
    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getItems()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/app/SingleItemAdapter;-><init>([Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 501
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getCheckIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/app/SingleItemAdapter;->setIndex(I)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getAdater()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    return-object v2

    .line 509
    :cond_2
    :goto_0
    new-instance v1, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialog;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 526
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getListDividerHeight()I

    move-result v1

    if-ltz v1, :cond_3

    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_3
    return-object v0
.end method

.method private hideContentPanel()V
    .locals 3

    .line 389
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 344
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 361
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :pswitch_0
    iput-object p4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 353
    :pswitch_1
    iput-object p4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 357
    :pswitch_2
    iput-object p4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutralMessage:Landroid/os/Message;

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
    .locals 8

    .line 246
    sget v0, Lus/zoom/zrcbox/R$id;->button1:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move-object v0, v3

    const/4 v5, 0x0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v5}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    const/4 v5, 0x1

    .line 258
    :goto_0
    sget v6, Lus/zoom/zrcbox/R$id;->button2:I

    invoke-virtual {p0, v6}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    .line 259
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v6}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_1
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v7}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    :cond_2
    or-int/lit8 v5, v5, 0x2

    .line 273
    :goto_1
    sget v6, Lus/zoom/zrcbox/R$id;->button3:I

    invoke-virtual {p0, v6}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 274
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v6}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 277
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 279
    :cond_3
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v7}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v0, :cond_4

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

    :cond_4
    or-int/lit8 v5, v5, 0x4

    :goto_2
    if-eqz v5, :cond_9

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 302
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 303
    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getPositiveButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/4 v6, -0x1

    .line 301
    invoke-direct {p0, v6, v0, v2, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 305
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    .line 306
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 307
    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNegativeButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 308
    invoke-virtual {v6}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 306
    invoke-direct {p0, v0, v2, v6, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 310
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, -0x3

    .line 311
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 312
    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmNeutralButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 313
    invoke-virtual {v6}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getNeutralButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 311
    invoke-direct {p0, v0, v2, v6, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButtonMessage(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 315
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_a

    .line 316
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 318
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 323
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    return v1
.end method

.method private setupContent()V
    .locals 6

    .line 396
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 397
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->hideContentPanel()V

    goto/16 :goto_1

    .line 399
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v2, :cond_5

    .line 400
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 403
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->hideContentPanel()V

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 408
    :cond_2
    iget-object v4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 411
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mContext:Landroid/content/Context;

    sget v5, Lus/zoom/zrcbox/R$style;->ZMTextView_Medium_DialogMsg:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    if-nez v2, :cond_4

    .line 416
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 418
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 422
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v4, -0x1

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    .line 423
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 444
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    .line 445
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->hideContentPanel()V

    .line 446
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->customFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 447
    sget v0, Lus/zoom/zrcbox/R$id;->customView:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 448
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->ismViewSpacingSpecified()Z

    .line 451
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    iget-object v5, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v5}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isHideBottomGap()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v1, 0x8

    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 424
    :cond_8
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    .line 428
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->createListView()Landroid/widget/ListView;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 437
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    sget v0, Lus/zoom/zrcbox/R$id;->alertOptionTitle:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 439
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_9
    :goto_1
    return-void
.end method

.method private setupLayoutBackground()V
    .locals 5

    .line 162
    sget v0, Lus/zoom/zrcbox/R$id;->dialog_root_layout:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 164
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 165
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 84
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 86
    :pswitch_2
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mButtonNeutral:Landroid/widget/Button;

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

    .line 93
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getmView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 100
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$layout;->zrc_alert_layout:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setContentView(I)V

    .line 101
    sget p1, Lus/zoom/zrcbox/R$id;->customPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->customFrame:Landroid/widget/FrameLayout;

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    sget p1, Lus/zoom/zrcbox/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    .line 105
    sget p1, Lus/zoom/zrcbox/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    .line 107
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isVerticalStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    sget p1, Lus/zoom/zrcbox/R$id;->buttonPanel_vertical:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 111
    :cond_2
    sget p1, Lus/zoom/zrcbox/R$id;->buttonPanel_horizontal:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->buttonPanel:Landroid/widget/LinearLayout;

    .line 115
    :goto_0
    sget p1, Lus/zoom/zrcbox/R$id;->topPanel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    const/16 p1, 0x11

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v0, :cond_3

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setupLayoutBackground()V

    .line 132
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mTopPanel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitleView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 136
    sget v0, Lus/zoom/zrcbox/R$id;->customTopPanel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

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
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->contentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 143
    :cond_4
    sget p1, Lus/zoom/zrcbox/R$id;->alertTitle:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->title:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_5
    :goto_1
    sget p1, Lus/zoom/zrcbox/R$id;->alertdialogmsg:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    .line 147
    sget p1, Lus/zoom/zrcbox/R$id;->customPanelBottomGap:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mCustomPanelBottomGap:Landroid/view/View;

    .line 148
    sget p1, Lus/zoom/zrcbox/R$id;->alertIcon:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    .line 149
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p1, :cond_6

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "blu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->ic_dialog_alert:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 152
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mAlertIcon:Landroid/widget/ImageView;

    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_2
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setupButtons()Z

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    :cond_7
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setupContent()V

    .line 157
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isCancelable()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 484
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 491
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 383
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

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

    .line 472
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setCancelable(Z)V

    .line 473
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMsg(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->msg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTitle(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmView(Landroid/view/View;)V

    return-void
.end method
