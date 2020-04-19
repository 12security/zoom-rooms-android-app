.class Lus/zoom/zrc/phonecall/SipCallFragment$6;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$6;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$6;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$400(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$500(Lus/zoom/zrc/phonecall/SipCallFragment;Landroid/view/View;)V

    return-void
.end method
