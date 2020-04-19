.class Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;
.super Ljava/lang/Object;
.source "SipCallContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/SipCallContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchedContact"
.end annotation


# instance fields
.field private isExtension:Z

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment$1;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 460
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->number:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 460
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Z
    .locals 0

    .line 460
    iget-boolean p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->isExtension:Z

    return p0
.end method

.method static synthetic access$802(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Z)Z
    .locals 0

    .line 460
    iput-boolean p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->isExtension:Z

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 470
    :cond_1
    check-cast p1, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    .line 472
    iget-object v2, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->number:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->number:Ljava/lang/String;

    .line 473
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 478
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 479
    iget-object v2, p0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->number:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
