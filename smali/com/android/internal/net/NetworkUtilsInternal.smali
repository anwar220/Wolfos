# classes4.dex

.class public Lcom/android/internal/net/NetworkUtilsInternal;
.super Ljava/lang/Object;


# static fields
.field private static final ADDRESS_FAMILIES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "^[a-zA-Z0-9_.-]+$"

    const-string v1, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    sget-object v1, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_1e

    aget v5, v1, v4

    invoke-static {v5, p0}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method public static native protectFromVpn(I)Z
.end method

.method public static native protectFromVpn(Ljava/io/FileDescriptor;)Z
.end method

.method public static native setAllowNetworkingForProcess(Z)V
.end method
