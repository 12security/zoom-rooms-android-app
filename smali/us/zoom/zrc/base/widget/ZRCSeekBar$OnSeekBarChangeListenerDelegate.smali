.class Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;
.super Ljava/lang/Object;
.source "ZRCSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/widget/ZRCSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeListenerDelegate"
.end annotation


# instance fields
.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCSeekBar;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->this$0:Lus/zoom/zrc/base/widget/ZRCSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->this$0:Lus/zoom/zrc/base/widget/ZRCSeekBar;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCSeekBar;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onProgressChanged isDragging "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->this$0:Lus/zoom/zrc/base/widget/ZRCSeekBar;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCSeekBar;->isDragging()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    const-string p1, "onProgressChanged"

    .line 73
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    const-string p1, "onStartTrackingTouch"

    const/4 v0, 0x0

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCSeekBar$OnSeekBarChangeListenerDelegate;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    const-string p1, "onStopTrackingTouch"

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
