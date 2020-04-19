.class Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;
.super Landroid/graphics/Path;
.source "ZRCTextViewWithClickableSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    .line 36
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 37
    iget-object p5, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {p5}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;

    move-result-object p5

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
