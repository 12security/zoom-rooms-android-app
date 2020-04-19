.class Lus/zoom/androidlib/app/ZMSendMessageFragment$1;
.super Ljava/lang/Object;
.source "ZMSendMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMSendMessageFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMSendMessageFragment;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMSendMessageFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$1;->this$0:Lus/zoom/androidlib/app/ZMSendMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$1;->this$0:Lus/zoom/androidlib/app/ZMSendMessageFragment;

    invoke-static {p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->access$000(Lus/zoom/androidlib/app/ZMSendMessageFragment;)Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->access$100(Lus/zoom/androidlib/app/ZMSendMessageFragment;Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;I)V

    return-void
.end method
