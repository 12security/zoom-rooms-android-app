.class Lus/zoom/zrc/view/JoinMeetingFragment$7;
.super Ljava/lang/Object;
.source "JoinMeetingFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 228
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$7;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 231
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$7;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$800(Lus/zoom/zrc/view/JoinMeetingFragment;)Z

    move-result p1

    return p1
.end method
