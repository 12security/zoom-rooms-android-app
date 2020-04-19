.class Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;
.super Ljava/lang/Object;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$100(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$1000(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    return-void
.end method
