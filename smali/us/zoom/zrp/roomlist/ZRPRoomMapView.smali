.class public Lus/zoom/zrp/roomlist/ZRPRoomMapView;
.super Landroid/view/View;
.source "ZRPRoomMapView.java"

# interfaces
.implements Lus/zoom/zrp/roomlist/IZRPRoomsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;,
        Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final SCALE_FROM_MIN_TO_MAX:I = 0x3


# instance fields
.field private backgroundViewport:Landroid/graphics/RectF;

.field private canvasViewport:Landroid/graphics/RectF;

.field private currFocusPos:Landroid/graphics/PointF;

.field private currViewport:Landroid/graphics/RectF;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

.field private layoutRect:Landroid/graphics/RectF;

.field private loadFailedMark:Landroid/graphics/drawable/Drawable;

.field private locationViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;",
            ">;"
        }
    .end annotation
.end field

.field private mapBackground:Landroid/graphics/drawable/Drawable;

.field private mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

.field private maxScale:F

.field private minScale:F

.field private myLocationBounds:Landroid/graphics/Rect;

.field private myLocationMark:Landroid/graphics/drawable/Drawable;

.field private namePaint:Landroid/text/TextPaint;

.field private onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

.field private origCanvasViewport:Landroid/graphics/RectF;

.field private pivotPaint:Landroid/graphics/Paint;

.field private pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

.field private roomLocationPaint:Landroid/graphics/Paint;

.field private roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaleGestureListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

.field private scroller:Landroid/widget/OverScroller;

.field private showMyLocationAnimator:Landroid/animation/ValueAnimator;

.field private statePaint:Landroid/text/TextPaint;

.field private tmpMatrix:Landroid/graphics/Matrix;

.field private tmpRect:Landroid/graphics/Rect;

.field private viewportPaint:Landroid/graphics/Paint;

.field private virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    .line 72
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    .line 74
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currFocusPos:Landroid/graphics/PointF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    .line 82
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    .line 112
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    .line 927
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 958
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 121
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    .line 72
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    .line 74
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currFocusPos:Landroid/graphics/PointF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    .line 82
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    .line 112
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    .line 927
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 958
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 126
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    .line 72
    iput p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    .line 74
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currFocusPos:Landroid/graphics/PointF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    .line 82
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    .line 112
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    .line 927
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$5;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 958
    new-instance p1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;

    invoke-direct {p1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$6;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 131
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->onMapBackgroundLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Rect;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->onRoomViewClicked(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->releaseRoomViewPress()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/PointF;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currFocusPos:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lus/zoom/zrp/roomlist/ZRPRoomMapView;F)F
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->checkScaleLimit(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/graphics/Matrix;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$1800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->checkViewportBounds()V

    return-void
.end method

.method static synthetic access$1900(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    return-object p0
.end method

.method static synthetic access$1902(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    return-object p1
.end method

.method static synthetic access$2000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/widget/OverScroller;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$2100(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->dispatchRoomViewClicked(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2200(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getCurrentScale()F

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)F
    .locals 0

    .line 58
    iget p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    return p0
.end method

.method static synthetic access$2400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$2500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;FF)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(FF)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Matrix;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/graphics/Paint;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomLocationPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)Landroid/text/TextPaint;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->statePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$900()Landroid/graphics/Rect;
    .locals 1

    .line 58
    sget-object v0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method private checkScaleLimit(F)F
    .locals 2

    .line 917
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p1

    .line 919
    iget v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 920
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    mul-float p1, p1, v0

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    goto :goto_0

    .line 921
    :cond_0
    iget v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 922
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    mul-float p1, p1, v0

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private checkViewportBounds()V
    .locals 7

    .line 871
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 872
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 876
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 877
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 878
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 880
    :goto_0
    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_3

    .line 881
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v0, v2

    goto :goto_2

    .line 884
    :cond_1
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v0, v5

    div-float/2addr v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 885
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 887
    :goto_1
    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v0, v6

    div-float/2addr v6, v4

    sub-float v6, v0, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 888
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v0, v2

    .line 893
    :cond_3
    :goto_2
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 894
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 895
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v0

    .line 897
    :cond_4
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 898
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v0

    goto :goto_3

    .line 901
    :cond_5
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v1, v5

    div-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    .line 902
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v0, v1, v0

    div-float/2addr v0, v4

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    .line 904
    :cond_6
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v1, v5

    div-float/2addr v5, v4

    sub-float v5, v1, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    .line 905
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v0, v1, v0

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v0

    .line 909
    :cond_7
    :goto_3
    invoke-direct {p0, v2, v3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(FF)V

    return-void
.end method

.method private dispatchRoomViewClicked(Landroid/view/MotionEvent;)V
    .locals 3

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 614
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 615
    invoke-virtual {v1, v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->setPressed(Z)V

    .line 616
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isInBounds(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->onRoomViewClicked(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)V

    :cond_0
    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 621
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private drawMapLoadFailedMark(Landroid/graphics/Canvas;)V
    .locals 4

    .line 598
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 599
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 601
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 602
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 603
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 604
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 606
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 607
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMyLocationMark(Landroid/graphics/Canvas;)V
    .locals 7

    .line 570
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getVirtualView(Ljava/lang/String;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    invoke-static {v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->access$200(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 577
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 578
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v1, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 580
    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 581
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    .line 582
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 584
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 586
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 587
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 588
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 589
    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v1, v5

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v0, v5

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 590
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 593
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 594
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getCurrentScale()F
    .locals 2

    .line 913
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getVirtualView(Ljava/lang/String;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
    .locals 3

    .line 560
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 561
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 562
    invoke-virtual {v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getRoomInfo()Lus/zoom/zrp/model/ZRPRoomInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 4

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomLocationPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomLocationPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomLocationPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomLocationPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    .line 155
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrp_location_info_name_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 158
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->namePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->statePaint:Landroid/text/TextPaint;

    .line 161
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->statePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->statePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrp_location_info_state_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->statePaint:Landroid/text/TextPaint;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 165
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 166
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureDetector:Landroid/view/GestureDetector;

    .line 168
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    .line 170
    new-instance v0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-direct {v0, p0, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Landroid/view/View;)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    .line 171
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->ic_my_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->myLocationMark:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->getZRPMapBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 176
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->addListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    const/4 v0, 0x2

    .line 179
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$2;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initViewports()V
    .locals 6

    .line 507
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getCanvasWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getCanvasHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 512
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 513
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 516
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 517
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(Landroid/graphics/Matrix;)V

    .line 519
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 520
    iget-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v3, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "initViewports background size is (%s, %s)"

    const/4 v3, 0x2

    .line 521
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 524
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 525
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 527
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 528
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 530
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 531
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 534
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 537
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    iput v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    .line 538
    iget v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    iput v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->maxScale:F

    const-string v0, "initViewports current viewports is %s"

    .line 540
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onMapBackgroundLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getBackgroundMap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x4c

    .line 493
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 494
    iput-object p3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 496
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    .line 498
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->initViewports()V

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$drawable;->ic_image_load_failed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    .line 503
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 487
    :cond_2
    :goto_1
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getBackgroundMap()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    const-string p3, "onMapBackgroundLoaded url error: url=%s, but needed %s"

    const/4 v0, 0x2

    .line 488
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onRoomViewClicked(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)V
    .locals 1
    .param p1    # Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 477
    invoke-static {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->access$100(Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getRoomInfo()Lus/zoom/zrp/model/ZRPRoomInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lus/zoom/zrp/roomlist/OnRoomClickListener;->onRoomClick(Lus/zoom/zrp/model/ZRPRoomInfo;)V

    :cond_1
    return-void
.end method

.method private releaseRoomViewPress()V
    .locals 2

    .line 626
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 627
    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->setPressed(Z)V

    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 629
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private scrollTo(Ljava/lang/String;Z)Z
    .locals 7

    .line 324
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p2, "request scroll to %s, but view port not initialized"

    .line 325
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getVirtualView(Ljava/lang/String;)Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 334
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getCurrentScale()F

    move-result v0

    .line 335
    iget v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->minScale:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    return v2

    .line 339
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->layoutRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->contains(FFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 344
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 345
    invoke-virtual {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 346
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 347
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    if-eqz p2, :cond_4

    .line 350
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    iget-object p2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    goto :goto_0

    :cond_4
    int-to-float p1, v0

    int-to-float p2, v2

    .line 352
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(FF)V

    .line 355
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v1
.end method

.method private sortVirtualRoomView(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$3;

    invoke-direct {v1, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$3;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 260
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 262
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 266
    invoke-virtual {v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_0

    invoke-virtual {v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 272
    :cond_2
    new-instance v2, Lus/zoom/zrp/roomlist/ZRPRoomMapView$4;

    invoke-direct {v2, p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$4;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private transformViewports(FF)V
    .locals 1

    .line 544
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 545
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 546
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method private transformViewports(Landroid/graphics/Matrix;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 553
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 554
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 463
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 464
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    .line 466
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    .line 467
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 468
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->currViewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    .line 469
    invoke-direct {p0, v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->transformViewports(FF)V

    .line 470
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->checkViewportBounds()V

    .line 472
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 393
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 361
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 362
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->imageLoadedListener:Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->addListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    .line 363
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getBackgroundMap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 371
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    .line 372
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->backgroundViewport:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 436
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 437
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 439
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->drawMapLoadFailedMark(Landroid/graphics/Canvas;)V

    .line 442
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 443
    invoke-virtual {v1, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->drawRoomBounds(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 446
    :cond_2
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    .line 447
    invoke-virtual {v1, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->drawRoomNameAndState(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 450
    :cond_3
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->drawMyLocationMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 399
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 380
    iget-object p3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/utils/ZRCImageLoader;->setSize(II)V

    .line 381
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->canvasViewport:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->origCanvasViewport:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->initViewports()V

    :cond_1
    return-void
.end method

.method public onSlideInScreen()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->initViewports()V

    .line 197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public onSlideOutScreen()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->initViewports()V

    .line 203
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 406
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 408
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 420
    :pswitch_0
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->releaseRoomViewPress()V

    goto :goto_2

    .line 415
    :pswitch_1
    iget-object v5, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->pressedRoomView:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1, v4}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;->isInBounds(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->releaseRoomViewPress()V

    goto :goto_2

    .line 423
    :pswitch_2
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->dispatchRoomViewClicked(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 427
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

    return-void
.end method

.method public showMyLocation()V
    .locals 3

    .line 299
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->scrollTo(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 307
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->showMyLocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 5

    .line 212
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getRoomMapInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getAllRooms()Ljava/util/List;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrp/model/ZRPRoomInfo;

    .line 218
    invoke-virtual {v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->isRoomCanDrawInMap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    new-instance v4, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;

    invoke-direct {v4, p0, v2}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualRoomView;-><init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;Lus/zoom/zrp/model/ZRPRoomInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\troomInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->sortVirtualRoomView(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->locationViewList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 227
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 228
    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update map info: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapBackground:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->loadFailedMark:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->initViewports()V

    .line 236
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getBackgroundMap()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->mapLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getBackgroundMap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Ljava/lang/String;)V

    .line 242
    :cond_2
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-virtual {p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->invalidateRoot()V

    .line 243
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public updateRoomsMeetings(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method public updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 3

    .line 311
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getAvailabilityChangedRoomIndexInAllRoomList()Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 315
    iget-object v2, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->virtualViewHelper:Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;

    invoke-virtual {v2, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView$VirtualViewHelper;->invalidateVirtualView(I)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 318
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public updateTimeBlock(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->setVisibility(I)V

    return-void
.end method
