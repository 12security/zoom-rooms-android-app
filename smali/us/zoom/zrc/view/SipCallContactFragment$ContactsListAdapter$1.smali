.class Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;
.super Ljava/lang/Object;
.source "SipCallContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

.field final synthetic val$contact:Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;->this$1:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;->val$contact:Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;->this$1:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    iget-object v0, v0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/SipCallContactFragment;->dismiss()V

    .line 431
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;->this$1:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    iget-object v0, v0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/SipCallContactFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 432
    instance-of v1, v0, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    if-eqz v1, :cond_0

    .line 433
    check-cast v0, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;

    .line 434
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;->val$contact:Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$700(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;->onClickSipDialBtn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SipCallContactFragment"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
