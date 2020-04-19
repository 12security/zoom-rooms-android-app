.class Lus/zoom/zrc/view/JoinMeetingFragment$10;
.super Ljava/lang/Object;
.source "JoinMeetingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/JoinMeetingFragment;->onStart()V
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

    .line 319
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$10;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 322
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$10;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$900(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/base/widget/ZRCEditText;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$1300(Lus/zoom/zrc/view/JoinMeetingFragment;Landroid/text/Editable;)V

    return-void
.end method
