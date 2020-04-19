.class public Lus/zoom/zrc/base/app/ZRCHelpDialog;
.super Lus/zoom/zrc/base/app/ZRCDialog;
.source "ZRCHelpDialog.java"


# instance fields
.field private closeButton:Landroid/view/View;

.field private contentView:Landroid/widget/FrameLayout;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 23
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCDialog_Help:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$layout;->zrc_help_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 27
    sget v0, Lus/zoom/zrcbox/R$id;->close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->closeButton:Landroid/view/View;

    .line 28
    sget v0, Lus/zoom/zrcbox/R$id;->help_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->textView:Landroid/widget/TextView;

    .line 29
    sget v0, Lus/zoom/zrcbox/R$id;->help_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->contentView:Landroid/widget/FrameLayout;

    .line 31
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->closeButton:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/base/app/ZRCHelpDialog$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/app/ZRCHelpDialog$1;-><init>(Lus/zoom/zrc/base/app/ZRCHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setDisplayContent(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->contentView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowClose(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog;->closeButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 59
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->show()V

    .line 60
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void
.end method
