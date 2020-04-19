.class Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RVHItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;-><init>(Landroid/content/Context;Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener$1;->this$0:Lus/zoom/androidlib/widget/recyclerviewhelper/RVHItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
