.class Lus/zoom/zrc/view/ZRCPolicyFragment$3;
.super Ljava/lang/Object;
.source "ZRCPolicyFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPolicyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment$3;->this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 104
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->hasNoBrowser()Z

    move-result p1

    return p1
.end method
