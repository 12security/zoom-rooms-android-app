.class Lus/zoom/zrc/view/IMAddrBookListFragment$12;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 401
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$12;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$12;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$900(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    .line 406
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$12;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->clickMeetingNowBtn()I

    move-result p1

    .line 407
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$12;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$1000(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$12;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$1000(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;->OnClickMeetingNowBtn(I)V

    :cond_0
    return-void
.end method
