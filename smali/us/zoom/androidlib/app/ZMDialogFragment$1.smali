.class Lus/zoom/androidlib/app/ZMDialogFragment$1;
.super Ljava/lang/Object;
.source "ZMDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMDialogFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMDialogFragment$1;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$1;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return-void
.end method
