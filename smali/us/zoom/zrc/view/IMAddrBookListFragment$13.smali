.class Lus/zoom/zrc/view/IMAddrBookListFragment$13;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->searchLocalContact(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

.field final synthetic val$s:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;Landroid/text/Editable;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$13;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$13;->val$s:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 451
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$13;->val$s:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->searchBuddyOnWeb(Ljava/lang/String;)Z

    .line 452
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$13;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$13;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->search:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method
