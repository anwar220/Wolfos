# classes2.dex

.class public abstract Landroid/view/textclassifier/TextClassifierEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionIndices:[I

.field private mEntityTypes:[Ljava/lang/String;

.field private final mEventCategory:I

.field private mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private mEventIndex:I

.field private final mEventType:I

.field private mExtras:Landroid/os/Bundle;

.field private mLocale:Landroid/icu/util/ULocale;

.field private mModelName:Ljava/lang/String;

.field private mResultId:Ljava/lang/String;

.field private mScores:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    return-object p0
.end method

.method private constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    iput p2, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(IILandroid/view/textclassifier/TextClassifierEvent$Builder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(II)V

    return-void
.end method


# virtual methods
.method abstract self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public varargs setActionIndices([I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setEntityTypes([Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationContext;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEventIndex(I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setModelName(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResultId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setScores([F)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method
