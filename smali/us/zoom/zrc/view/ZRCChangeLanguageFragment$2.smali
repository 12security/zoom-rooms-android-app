.class Lus/zoom/zrc/view/ZRCChangeLanguageFragment$2;
.super Ljava/lang/Object;
.source "ZRCChangeLanguageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCChangeLanguageFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCChangeLanguageFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$2;->this$0:Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$2;->this$0:Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->safeDismiss()V

    return-void
.end method
