.class Lus/zoom/zrc/incoming/IncomingCallActivity$3;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/IncomingCallActivity;

.field final synthetic val$announcedIncomingCallView:Lus/zoom/zrc/incoming/IncomingCallView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrc/incoming/IncomingCallView;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$3;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity;

    iput-object p2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$3;->val$announcedIncomingCallView:Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$3;->val$announcedIncomingCallView:Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-virtual {v0}, Lus/zoom/zrc/incoming/IncomingCallView;->announceIncomingCallForAccessibility()V

    return-void
.end method
