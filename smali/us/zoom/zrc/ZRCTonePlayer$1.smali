.class Lus/zoom/zrc/ZRCTonePlayer$1;
.super Landroid/os/Handler;
.source "ZRCTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCTonePlayer;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCTonePlayer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrc/ZRCTonePlayer$1;->this$0:Lus/zoom/zrc/ZRCTonePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lus/zoom/zrc/ZRCTonePlayer$1;->this$0:Lus/zoom/zrc/ZRCTonePlayer;

    invoke-static {v0, p1}, Lus/zoom/zrc/ZRCTonePlayer;->access$000(Lus/zoom/zrc/ZRCTonePlayer;Ljava/lang/String;)V

    return-void
.end method
