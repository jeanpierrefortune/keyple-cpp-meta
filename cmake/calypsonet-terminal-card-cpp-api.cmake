# *************************************************************************************************
# Copyright (c) 2022 Calypso Networks Association                                                 *
# https://www.calypsonet-asso.org/                                                                *
#                                                                                                 *
# See the NOTICE file(s) distributed with this work for additional information regarding          *
# copyright ownership.                                                                            *
#                                                                                                 *
# This program and the accompanying materials are made available under the terms of the Eclipse   *
# Public License 2.0 which is available at http://www.eclipse.org/legal/epl-2.0                   *
#                                                                                                 *
# SPDX-License-Identifier: EPL-2.0                                                                *
# *************************************************************************************************/

# Git
INCLUDE(FindGit)
FIND_PACKAGE(Git)
IF(NOT Git_FOUND)
	MESSAGE(FATAL_ERROR "Git not found!")
ENDIF()

# External Project
INCLUDE(FetchContent)

# Project
SET(EP_CALYPSONET_TERMINAL_CARD "calypsonet-terminal-card-cpp-api")
SET(EP_VERSION "1.0.0.1")

FetchContent_Populate (
	${EP_CALYPSONET_TERMINAL_CARD}

	GIT_REPOSITORY https://github.com/calypsonet/${EP_CALYPSONET_TERMINAL_CARD}.git
	GIT_TAG        ${EP_VERSION}
	GIT_SHALLOW    ON
	SOURCE_DIR     ../externals/${EP_CALYPSONET_TERMINAL_CARD}
	UPDATE_DISCONNECTED ON
)

ADD_SUBDIRECTORY(externals/${EP_CALYPSONET_TERMINAL_CARD})
