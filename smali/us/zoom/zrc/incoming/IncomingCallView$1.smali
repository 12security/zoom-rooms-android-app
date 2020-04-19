.class Lus/zoom/zrc/incoming/IncomingCallView$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallView;->layoutForCurrentIncoming()V
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

    .line 128
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView$1;->this$0:Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    invoke-super {p0, p1}, Landroidx/transition/TransitionListenerAdapter;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallView$1;->this$0:Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-virtual {p1}, Lus/zoom/zrc/incoming/IncomingCallView;->updateIncomingCall()V

    return-void
.end method
