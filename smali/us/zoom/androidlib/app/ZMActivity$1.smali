.class Lus/zoom/androidlib/app/ZMActivity$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMActivity;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivity$1;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity$1;->this$0:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/androidlib/app/ZMActivity;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
