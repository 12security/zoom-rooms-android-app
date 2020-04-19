.class Lus/zoom/zrc/view/IMAddrBookListFragment$9;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$9;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Ljava/lang/Object;)V
    .locals 1

    .line 333
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->removeSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    :cond_0
    return-void
.end method
