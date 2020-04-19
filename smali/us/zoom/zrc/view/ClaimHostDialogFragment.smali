.class public Lus/zoom/zrc/view/ClaimHostDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ClaimHostDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private claimHostCancel:Landroid/view/View;

.field private claimHostConfirmTxt:Landroid/widget/TextView;

.field private claimHostKey:Landroid/widget/EditText;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ClaimHostDialogFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHost()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getMeetingActivity()Lus/zoom/zrc/MeetingActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/MeetingActivity;->stopClaimHost()V

    return-void
.end method

.method private claimHost()V
    .locals 2

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->dismiss()V

    .line 157
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ConfApp;->claimHost(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getMeetingActivity()Lus/zoom/zrc/MeetingActivity;
    .locals 2

    .line 170
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 171
    instance-of v1, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Lus/zoom/zrc/MeetingActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHost()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostCancel:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 149
    invoke-direct {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->setStyle(II)V

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 46
    iput v0, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->result:I

    goto :goto_0

    :cond_0
    const-string v1, "claim_result"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->result:I

    .line 51
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->setDisableImmersiveModeForPolycomTrio()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 57
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v1, 0x5

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69
    sget p3, Lus/zoom/zrcbox/R$layout;->claim_host_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lus/zoom/zrcbox/R$id;->claim_host_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 71
    sget p3, Lus/zoom/zrcbox/R$id;->user_confirm_txt:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    .line 72
    sget p3, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostCancel:Landroid/view/View;

    .line 73
    sget p3, Lus/zoom/zrcbox/R$id;->claim_host_key:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostKey:Landroid/widget/EditText;

    .line 74
    iget-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostCancel:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostKey:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/view/ClaimHostDialogFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment$1;-><init>(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostKey:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/view/ClaimHostDialogFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment$2;-><init>(Lus/zoom/zrc/view/ClaimHostDialogFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget p3, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->result:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    packed-switch p3, :pswitch_data_0

    const/16 p3, 0x8

    .line 121
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :pswitch_0
    sget p3, Lus/zoom/zrcbox/R$string;->network_error:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    sget p3, Lus/zoom/zrcbox/R$string;->invalid_host_key:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$string;->host_key_format:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostKey:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    iget-object p2, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    const-string p3, "#76787a"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 127
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/ClaimHostDialogFragment;->claimHostConfirmTxt:Landroid/widget/TextView;

    const-string p3, "#1C86EE"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 134
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/ClaimHostDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_round_dialog_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method
