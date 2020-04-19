.class Lus/zoom/zrc/view/ZRCExtensibleTextView$1;
.super Landroid/text/style/ClickableSpan;
.source "ZRCExtensibleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCExtensibleTextView;->getMoreClickableText(Ljava/lang/String;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCExtensibleTextView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->access$000(Lus/zoom/zrc/view/ZRCExtensibleTextView;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_ui_kit_color_blue_2D8CFF:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_ui_kit_color_blue_2D8CFF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 101
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
