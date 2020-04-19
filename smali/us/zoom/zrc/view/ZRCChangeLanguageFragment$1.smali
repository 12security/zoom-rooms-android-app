.class Lus/zoom/zrc/view/ZRCChangeLanguageFragment$1;
.super Ljava/lang/Object;
.source "ZRCChangeLanguageFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;


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

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$1;->this$0:Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClicked(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;Ljava/util/Locale;)V
    .locals 0

    .line 57
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/ZRCApplication;->changeLocaleTo(Ljava/util/Locale;)V

    .line 58
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$1;->this$0:Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->safeDismiss()V

    return-void
.end method
