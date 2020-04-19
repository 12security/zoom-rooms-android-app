.class final Lus/zoom/androidlib/util/UIUtil$1;
.super Landroid/text/style/URLSpan;
.source "UIUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/UIUtil;->buildLinkTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 440
    iput-object p2, p0, Lus/zoom/androidlib/util/UIUtil$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lus/zoom/androidlib/util/UIUtil$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
