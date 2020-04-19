.class public final enum Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;
.super Ljava/lang/Enum;
.source "ZRPReserveScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPReserveScrollerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollViewScrollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field public static final enum INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field public static final enum NO_SCROLL_VIEW_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field public static final enum NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field public static final enum OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 188
    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const-string v1, "NO_SCROLL_VIEW_SCROLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SCROLL_VIEW_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const-string v1, "NO_SKIP_SCROLL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const-string v1, "INNER_SKIP_SCROLL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const-string v1, "OTHER_SKIP_SCROLL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    const/4 v0, 0x4

    .line 187
    new-array v0, v0, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SCROLL_VIEW_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    aput-object v1, v0, v4

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    aput-object v1, v0, v5

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->$VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;
    .locals 1

    .line 187
    const-class v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;
    .locals 1

    .line 187
    sget-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->$VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    invoke-virtual {v0}, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    return-object v0
.end method
