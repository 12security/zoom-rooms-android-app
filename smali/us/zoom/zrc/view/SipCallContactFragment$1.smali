.class Lus/zoom/zrc/view/SipCallContactFragment$1;
.super Ljava/lang/Object;
.source "SipCallContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SipCallContactFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$1;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$1;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->dismiss()V

    return-void
.end method
