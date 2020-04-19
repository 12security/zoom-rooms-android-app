.class Lus/zoom/zrc/view/SipCallContactFragment$2;
.super Ljava/lang/Object;
.source "SipCallContactFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SipCallContactFragment;->setupContactListViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SipCallContactFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$2;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCancelled()V
    .locals 1

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$2;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/SipCallContactFragment;->access$300(Lus/zoom/zrc/view/SipCallContactFragment;)V

    return-void
.end method

.method public onSearchInput(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$2;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/view/SipCallContactFragment;->access$200(Lus/zoom/zrc/view/SipCallContactFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$2;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/SipCallContactFragment;->access$100(Lus/zoom/zrc/view/SipCallContactFragment;)V

    return-void
.end method
