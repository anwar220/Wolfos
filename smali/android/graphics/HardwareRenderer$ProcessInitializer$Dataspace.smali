# classes.dex

.class final enum Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer$ProcessInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Dataspace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum DISPLAY_P3:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum SCRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum SRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace$Named;

.field private final mNativeDataspace:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmNativeDataspace(Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)I
    .registers 1

    iget p0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mNativeDataspace:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x0

    const/high16 v4, 0x88a0000

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->DISPLAY_P3:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    new-instance v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    const-string v4, "SCRGB"

    const/4 v5, 0x1

    const/high16 v6, 0x18810000

    invoke-direct {v1, v4, v5, v2, v6}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->SCRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    new-instance v2, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    const-string v6, "SRGB"

    const/4 v7, 0x2

    const/high16 v8, 0x8810000

    invoke-direct {v2, v6, v7, v4, v8}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->SRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->$VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace$Named;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    iput p4, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mNativeDataspace:I

    return-void
.end method

.method static find(Landroid/graphics/ColorSpace;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->values()[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/ColorSpace;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$find$0(Landroid/graphics/ColorSpace;Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)Z
    .registers 3

    iget-object v0, p1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    .registers 2

    const-class v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-object v0
.end method

.method public static values()[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    .registers 1

    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->$VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-virtual {v0}, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-object v0
.end method
