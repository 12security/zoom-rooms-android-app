.class Lus/zoom/zrc/incoming/IncomingSipCallView$1;
.super Ljava/lang/Object;
.source "IncomingSipCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingSipCallView;->show3Buttons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/IncomingSipCallView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingSipCallView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView$1;->this$0:Lus/zoom/zrc/incoming/IncomingSipCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingSipCallView$1;->this$0:Lus/zoom/zrc/incoming/IncomingSipCallView;

    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_END_AND_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/incoming/IncomingSipCallView;->onAcceptIncomingCall(Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V

    return-void
.end method
