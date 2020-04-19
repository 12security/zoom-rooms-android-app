.class public Lus/zoom/zrc/view/ScreenResolutionStatusFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ScreenResolutionStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancel:Landroid/view/View;

.field private confirm:Landroid/view/View;

.field private msg:Landroid/widget/TextView;

.field private screenStatus:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->dismiss()V

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->confirm:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 73
    iget p1, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->screenStatus:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->optimizeScreenResolution(I)I

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->optimizeScreenResolution(I)I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getScreenResolutionStatus()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->screenStatus:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 39
    sget p3, Lus/zoom/zrcbox/R$layout;->screen_resolution_status_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lus/zoom/zrcbox/R$id;->screen_resolution_status_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->title:Landroid/widget/TextView;

    .line 41
    sget p2, Lus/zoom/zrcbox/R$id;->screen_resolution_status_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->msg:Landroid/widget/TextView;

    .line 42
    iget p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->screenStatus:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->confirm:Landroid/view/View;

    .line 55
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 56
    sget p3, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 57
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->cancel:Landroid/view/View;

    .line 58
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 59
    sget p3, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->title:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->revert_screen_resolution_optimization_title:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->msg:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :pswitch_1
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->confirm:Landroid/view/View;

    .line 45
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 46
    sget p3, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->cancel:Landroid/view/View;

    .line 48
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 49
    sget p3, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->title:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->optimize_screen_resolution_title:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->msg:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->optimize_screen_resolution_message:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->confirm:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;->cancel:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
