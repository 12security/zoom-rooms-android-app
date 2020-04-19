.class Lus/zoom/template/IfStatement;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lus/zoom/template/IStatement;


# instance fields
.field private mConditionVariable:Ljava/lang/String;

.field private mElseTemplate:Lus/zoom/template/Template;

.field private mIfTemplate:Lus/zoom/template/Template;

.field private mIsNegative:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lus/zoom/template/Template;Lus/zoom/template/Template;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lus/zoom/template/IfStatement;->mIsNegative:Z

    const-string v0, "!"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lus/zoom/template/IfStatement;->mIsNegative:Z

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/template/IfStatement;->mConditionVariable:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_0
    iput-object p1, p0, Lus/zoom/template/IfStatement;->mConditionVariable:Ljava/lang/String;

    .line 319
    :goto_0
    iput-object p2, p0, Lus/zoom/template/IfStatement;->mIfTemplate:Lus/zoom/template/Template;

    .line 320
    iput-object p3, p0, Lus/zoom/template/IfStatement;->mElseTemplate:Lus/zoom/template/Template;

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lus/zoom/template/IfStatement;->mConditionVariable:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "false"

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 327
    :goto_1
    iget-boolean v1, p0, Lus/zoom/template/IfStatement;->mIsNegative:Z

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lus/zoom/template/IfStatement;->mIfTemplate:Lus/zoom/template/Template;

    invoke-virtual {v0, p1}, Lus/zoom/template/Template;->format(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 333
    :cond_3
    iget-object v0, p0, Lus/zoom/template/IfStatement;->mElseTemplate:Lus/zoom/template/Template;

    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0, p1}, Lus/zoom/template/Template;->format(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method
