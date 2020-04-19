.class public final enum Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;
.super Ljava/lang/Enum;
.source "ZRPReserveScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPReserveScrollerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

.field public static final enum END:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

.field public static final enum LOCATION:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

.field public static final enum START:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 184
    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const-string v1, "LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->LOCATION:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const-string v1, "START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->START:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    new-instance v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const-string v1, "END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->END:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const/4 v0, 0x3

    .line 183
    new-array v0, v0, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->LOCATION:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->START:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    aput-object v1, v0, v3

    sget-object v1, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->END:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    aput-object v1, v0, v4

    sput-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->$VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;
    .locals 1

    .line 183
    const-class v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    return-object p0
.end method

.method public static values()[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;
    .locals 1

    .line 183
    sget-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->$VALUES:[Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    invoke-virtual {v0}, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    return-object v0
.end method
