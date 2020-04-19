.class Lus/zoom/zrc/view/ParticipantsListView$8;
.super Ljava/lang/Object;
.source "ParticipantsListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantsListView;->showUnlockMeetingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$8;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
