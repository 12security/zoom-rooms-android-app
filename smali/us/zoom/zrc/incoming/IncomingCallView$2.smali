.class Lus/zoom/zrc/incoming/IncomingCallView$2;
.super Ljava/lang/Object;
.source "IncomingCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallView;->layoutAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/IncomingCallView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView$2;->this$0:Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView$2;->this$0:Lus/zoom/zrc/incoming/IncomingCallView;

    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_ACCEPT:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->onAcceptIncomingCall(Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V

    return-void
.end method
