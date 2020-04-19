.class Lus/zoom/zrc/view/Participants_More_PopupView$2;
.super Ljava/lang/Object;
.source "Participants_More_PopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/Participants_More_PopupView;->delayDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/Participants_More_PopupView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/Participants_More_PopupView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lus/zoom/zrc/view/Participants_More_PopupView$2;->this$0:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView$2;->this$0:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->dismiss()V

    return-void
.end method
