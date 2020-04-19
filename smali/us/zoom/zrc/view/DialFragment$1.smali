.class Lus/zoom/zrc/view/DialFragment$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/DialFragment;->setupTitleBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/view/DialFragment$1;->this$0:Lus/zoom/zrc/view/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lus/zoom/zrc/view/DialFragment$1;->this$0:Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DialFragment;->onBackClicked()V

    return-void
.end method
