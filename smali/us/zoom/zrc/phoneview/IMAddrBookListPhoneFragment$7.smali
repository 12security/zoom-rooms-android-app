.class Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;
.super Ljava/lang/Object;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchLocalContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 280
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/PTApp;->searchBuddyOnWeb(Ljava/lang/String;)Z

    .line 281
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->search:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method
