.class Lus/zoom/zrc/view/JoinMeetingFragment$4;
.super Ljava/lang/Object;
.source "JoinMeetingFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/JoinMeetingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/JoinMeetingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$4;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardClosed()V
    .locals 1

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$4;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$4;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$300(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    :cond_0
    return-void
.end method

.method public onKeyboardOpen()V
    .locals 1

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$4;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$4;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$200(Lus/zoom/zrc/view/JoinMeetingFragment;)V

    :cond_0
    return-void
.end method
